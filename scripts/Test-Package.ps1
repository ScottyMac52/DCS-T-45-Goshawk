param(
  [Parameter(Mandatory = $true)][string]$Version
)
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$dist = Join-Path $root 'dist'
$pkgName = 'DCS-T-45-Components'
$zip = Join-Path $dist "$pkgName-$Version-OVGME.zip"
if (-not (Test-Path $zip)) { throw "Missing package $zip" }
$sums = Get-Content (Join-Path $dist 'SHA256SUMS.txt')
$leaf = Split-Path $zip -Leaf
$hashLine = $sums | Where-Object { $_ -match [regex]::Escape($leaf) } | Select-Object -First 1
if (-not $hashLine) { throw 'SHA256SUMS.txt does not list the package archive.' }
$expected = ($hashLine -split '\s+')[0].ToLowerInvariant()
$actual = (Get-FileHash $zip -Algorithm SHA256).Hash.ToLowerInvariant()
if ($expected -ne $actual) { throw 'SHA256SUMS.txt does not match the package archive.' }

Add-Type -AssemblyName System.IO.Compression.FileSystem
$archiveBase = [System.IO.Path]::GetFileNameWithoutExtension($leaf)
$archive = [System.IO.Compression.ZipFile]::OpenRead($zip)
try {
  $entries = @($archive.Entries | ForEach-Object { $_.FullName.Replace('\', '/') })
  $payloadPrefix = "$archiveBase/"
  $unexpected = @($entries | Where-Object {
    $_ -ne 'README.TXT' -and
    $_ -ne 'VERSION.TXT' -and
    -not $_.StartsWith($payloadPrefix, [System.StringComparison]::Ordinal)
  })
  if ($unexpected.Count -gt 0) {
    throw "Invalid OVGME archive root. Expected '$archiveBase/' but found '$($unexpected[0])'."
  }

  $profilePrefix = "$($payloadPrefix)Config/Input/T-45/joystick/"
  $packagedProfiles = @(
    $entries |
      Where-Object { $_.StartsWith($profilePrefix, [System.StringComparison]::Ordinal) } |
      ForEach-Object { $_.Substring($profilePrefix.Length) } |
      Where-Object { $_ -and -not $_.Contains('/') }
  )
  if ($packagedProfiles.Count -eq 0) {
    throw 'OVGME archive is missing the joystick profile payload.'
  }
  if (-not ($entries | Where-Object { $_.StartsWith("${payloadPrefix}Config/Input/UiLayer/joystick/", [System.StringComparison]::Ordinal) })) {
    throw 'OVGME archive is missing the shared UI Layer joystick payload.'
  }
  if ($entries -notcontains "$($payloadPrefix)Config/Input/UiLayer/modifiers.lua") {
    throw 'OVGME archive is missing the shared UI Layer modifiers.lua.'
  }
  if (-not ($entries | Where-Object { $_.StartsWith("$($payloadPrefix)KNEEBOARD/T-45/", [System.StringComparison]::Ordinal) })) {
    throw 'OVGME archive is missing the kneeboard payload.'
  }
  foreach ($kneeboardPage in @('03-TM-MFD-3.png', '04-MOZA-AB9.png')) {
    if ($entries -notcontains "$($payloadPrefix)KNEEBOARD/T-45/$kneeboardPage") {
      throw "OVGME archive is missing required kneeboard page: $kneeboardPage"
    }
  }
  if ($entries -notcontains 'README.TXT') { throw 'OVGME archive is missing README.TXT.' }
  if ($entries -notcontains 'VERSION.TXT') { throw 'OVGME archive is missing VERSION.TXT.' }
}
finally {
  $archive.Dispose()
}

Write-Host "Package checksum and OVGME structure OK for $leaf"

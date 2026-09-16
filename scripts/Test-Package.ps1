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

  $sourceProfileDirectory = Join-Path $root 'src/Config/Input/T-45/joystick'
  $sourceProfiles = @(
    Get-ChildItem -LiteralPath $sourceProfileDirectory -Filter '*.diff.lua' -File |
      ForEach-Object { $_.Name }
  )
  $unexpectedProfiles = @($packagedProfiles | Where-Object { $sourceProfiles -notcontains $_ })
  if ($unexpectedProfiles.Count -gt 0) {
    throw "OVGME archive contains profile(s) not present in the source inventory: $($unexpectedProfiles -join ', ')"
  }

  $inventory = Get-Content (Join-Path $root 'config/kneeboard.json') -Raw | ConvertFrom-Json
  $profileProperties = $inventory.profiles.PSObject.Properties
  $requiredProfiles = @{}
  foreach ($profileKey in @('tm-mfd-3', 'moza-ab9', 'winctrl-icp')) {
    $configured = $profileProperties[$profileKey]
    if (-not $configured) { throw "config/kneeboard.json is missing required profile key: $profileKey" }
    $profile = Split-Path -Leaf $configured.Value
    if ($sourceProfiles -notcontains $profile) {
      throw "Configured T-45 profile '$profileKey' is missing from the source inventory: $profile"
    }
    $requiredProfiles[$profileKey] = $profile
  }

  # DCS-Common intentionally excludes empty diff.lua files from an OVGME package.
  # MFD3 and the standalone MOZA base are still required in the source/configuration
  # inventory so the scaffold and generated documentation know about those devices.
  $requiredPackagedProfile = $requiredProfiles['winctrl-icp']
  if ($packagedProfiles -notcontains $requiredPackagedProfile) {
    throw "OVGME archive is missing the configured ICP profile: $requiredPackagedProfile"
  }

  if ($profileProperties['ava-base-f16c']) {
    throw 'config/kneeboard.json must not contain the AVA Base profile.'
  }
  if ($sourceProfiles | Where-Object {
    $_.StartsWith('Ava [R] Viper', [System.StringComparison]::OrdinalIgnoreCase)
  }) {
    throw 'The T-45 source inventory must not contain the AVA Base profile.'
  }
  if ($packagedProfiles | Where-Object {
    $_.StartsWith('Ava [R] Viper', [System.StringComparison]::OrdinalIgnoreCase)
  }) {
    throw 'OVGME archive must not contain the AVA Base profile.'
  }

  if (-not ($entries | Where-Object { $_.StartsWith("$($payloadPrefix)Config/Input/UiLayer/joystick/", [System.StringComparison]::Ordinal) })) {
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

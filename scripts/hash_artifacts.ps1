# hash_artifacts.ps1 – Berechnet SHA-256 für alle Artefakte und aktualisiert das Sammelprotokoll

$artifactsDir = ".\artifacts\screenshots"
$logFile = ".\logs\collection_log.md"

# Funktion: SHA-256 berechnen
function Get-FileHashSha256 {
    param ([string]$Path)
    if (Test-Path $Path) {
        $hash = Get-FileHash -Path $Path -Algorithm SHA256
        return $hash.Hash.ToLower()
    } else {
        return "[DATEI NICHT GEFUNDEN]"
    }
}

# Artefakte sammeln
$files = Get-ChildItem -Path $artifactsDir -File -Name
if (-not $files) {
    Write-Host "Keine Artefakte im Ordner gefunden: $artifactsDir" -ForegroundColor Yellow
    exit 0
}

# Hashes berechnen
$hashes = @{}
foreach ($file in $files) {
    $fullPath = Join-Path $artifactsDir $file
    $hashes[$file] = Get-FileHashSha256 -Path $fullPath
    Write-Host "$file : $($hashes[$file])"
}

# Sammelprotokoll aktualisieren (Platzhalter ersetzen)
if (-not (Test-Path $logFile)) {
    Write-Host "Sammelprotokoll nicht gefunden: $logFile" -ForegroundColor Red
    exit 1
}

$content = Get-Content -Path $logFile -Raw
foreach ($file in $files) {
    $placeholder = "[SHA-256 nachträglich eintragen]"
    $replacement = $hashes[$file]
    $content = $content -replace $placeholder, $replacement
}

Set-Content -Path $logFile -Value $content -Encoding UTF8
Write-Host "Sammelprotokoll aktualisiert: $logFile" -ForegroundColor Green

# collect_all_posts.ps1 – Vorlage für die manuelle, vollständige Erfassung aller Posts mit Kommentaren

param(
    [Parameter(Mandatory=$false)]
    [string]$TargetUser = "wirliebentanzen1love1family",
    [Parameter(Mandatory=$false)]
    [string]$BaseUrl = "https://www.instagram.com",
    [Parameter(Mandatory=$false)]
    [string]$PostsDir = ".\posts",
    [Parameter(Mandatory=$false)]
    [string]$ScreenshotsDir = ".\artifacts\screenshots"
)

# Ordner anlegen, falls nicht vorhanden
if (-not (Test-Path $PostsDir)) { New-Item -ItemType Directory -Path $PostsDir | Out-Null }
if (-not (Test-Path $ScreenshotsDir)) { New-Item -ItemType Directory -Path $ScreenshotsDir | Out-Null }

function Write-PostTemplate {
    param(
        [string]$PostId,
        [string]$Url,
        [string]$Autor,
        [string]$Datum,
        [int]$Likes,
        [string]$Caption,
        [string[]]$Mentions,
        [string[]]$Hashtags,
        [string[]]$Kommentare
    )
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $safePostId = $PostId -replace '[^a-zA-Z0-9_-]', '_'
    $filePath = Join-Path $PostsDir "post_${safePostId}.md"

    $mentionsStr = $Mentions | ForEach-Object { "- $_" } | Out-String
    $hashtagsStr = $Hashtags | ForEach-Object { "- $_" } | Out-String
    $kommentareStr = $Kommentare | ForEach-Object { "### Kommentar`n- **User:** $_.User`n- **Text:** $_.Text`n- **Zeit:** $_.Zeit`n- **Likes:** $_.Likes" } | Out-String

    $content = @"
# Post: $PostId

**Plattform:** Instagram  
**URL:** $Url  
**Typ:** [Reel/Post/Carousel]  
**Autor:** $Autor  
**Datum/Zeit:** $Datum  
**Likes:** $Likes  

## Caption (Originaltext)
```
$Caption
```

## Erwähnte Profile (@-Mentions)
$mentionsStr

## Hashtags
$hashtagsStr

## Kommentare (öffentlich sichtbar)
$kommentareStr

## Metadaten zur Erhebung
- **Erhoben am:** $timestamp UTC
- **Erhebungsweg:** MCP browsermcp, manueller Klick auf Post, Kommentare aufgeklappt
- **Artefakte:**
  - Screenshot: [Dateiname nach Schema eintragen]
  - Screenshot (Kommentare): [Dateiname nach Schema eintragen]
- **Hashes:** [nachträglich eintragen]

## Interpretation/Hinweise
- [Hier eintragen: Thematischer Bezug, Interaktionen, Auffälligkeiten]

---
"@
    Set-Content -Path $filePath -Value $content -Encoding UTF8
    Write-Host "Post-Datei erstellt: $filePath"
}

# Beispielhafte Nutzung (manuell anpassen)
Write-Host "=== Anleitung für vollständige Erfassung ===" -ForegroundColor Cyan
Write-Host "1. Rufe im Browser das Profil auf: $BaseUrl/$TargetUser/"
Write-Host "2. Öffne nacheinander jeden Post/Reel."
Write-Host "3. Pro Post:"
Write-Host "   - Screenshot des Posts machen (Namensschema beachten)."
Write-Host "   - Caption kopieren."
Write-Host "   - Alle sichtbaren Kommentare erfassen (User, Text, Zeit, Likes)."
Write-Host "   - Notiere Likes und Datum."
Write-Host "4. Rufe dieses Skript für jeden Post auf, um eine MD-Datei zu erzeugen:"
Write-Host "   .\scripts\collect_all_posts.ps1"
Write-Host "5. Hashes danach mit .\scripts\hash_artifacts.ps1 berechnen."
Write-Host ""
Write-Host "Hinweis: Dieses Skript ist eine Vorlage. Die eigentliche Datenerhebung erfolgt manuell im Browser."
Write-Host ""

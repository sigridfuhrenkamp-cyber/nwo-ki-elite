# run_full_collection.ps1 – Startet die vollständige, strukturierte Erfassung aller Posts

Write-Host "=== Vollständige Instagram-Erhebung: wirliebentanzen1love1family ===" -ForegroundColor Cyan
Write-Host ""

Write-Host "Schritt 1/4: Posts manuell im Browser erfassen" -ForegroundColor Yellow
Write-Host "- Öffne das Profil: https://www.instagram.com/wirliebentanzen1love1family/"
Write-Host "- Gehe durch alle Posts/Reels/Carousels."
Write-Host "- Pro Post:"
Write-Host "   * Screenshot des Posts (Namensschema beachten)."
Write-Host "   * Caption kopieren."
Write-Host "   * Alle sichtbaren Kommentare erfassen (User, Text, Zeit, Likes)."
Write-Host "   * Likes und Datum notieren."
Write-Host ""

Write-Host "Schritt 2/4: Post-MD-Dateien anlegen" -ForegroundColor Yellow
Write-Host "- Nutze die Vorlage: .\scripts\collect_all_posts.ps1"
Write-Host "- Rufe es pro Post auf, um eine strukturierte MD-Datei zu erzeugen."
Write-Host ""

Write-Host "Schritt 3/4: Hashes berechnen" -ForegroundColor Yellow
Write-Host "- Nach der Erhebung ausführen:"
Write-Host "   .\scripts\hash_artifacts.ps1"
Write-Host ""

Write-Host "Schritt 4/4: Sammelprotokoll aktualisieren" -ForegroundColor Yellow
Write-Host "- Ergänze in .\logs\collection_log.md die neuen Schritte."
Write-Host "- Führe bei Bedarf erneut .\scripts\run_collection.ps1 aus."
Write-Host ""

Write-Host "=== Ordnerstruktur nach Erhebung ===" -ForegroundColor Green
Write-Host "- posts\      : eine MD-Datei pro Post (inkl. Kommentare)"
Write-Host "- artifacts\screenshots\ : Screenshots nach Namensschema"
Write-Host "- logs\collection_log.md   : zentrales Sammelprotokoll"
Write-Host ""

Write-Host "=== Hinweis ===" -ForegroundColor Magenta
Write-Host "Diese Erhebung erfolgt ohne Automatisierung/Scraping und nur für sichtbare, öffentliche Inhalte."
Write-Host "Account-Erstellungsdatum und letzte Aktivität sind oft nicht öffentlich sichtbar."
Write-Host "Bei Verdacht auf strafbare Inhalte: Erhebung stoppen, Case Owner informieren."
Write-Host ""

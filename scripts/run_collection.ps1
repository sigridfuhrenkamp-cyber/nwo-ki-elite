# run_collection.ps1 – Startet die Hash-Berechnung und zeigt eine Zusammenfassung an

Write-Host "=== Instagram-Forensik: Artefakte hashen ===" -ForegroundColor Cyan
Write-Host ""

# Hash-Skript ausführen
.\scripts\hash_artifacts.ps1

Write-Host ""
Write-Host "=== Nächste manuelle Schritte (falls gewünscht) ===" -ForegroundColor Yellow
Write-Host "- Öffne einzelne Reels/Posts und sichere Captions/Kommentare."
Write-Host "- Klicke Highlights an und speichere die Inhalte als Screenshots."
Write-Host "- Ergänze im Sammelprotokoll weitere Beobachtungen unter 'Schritt 4/5'."
Write-Host "- Führe dieses Skript erneut aus, um neue Artefakte zu hashen."
Write-Host ""

Write-Host "=== Hinweis ===" -ForegroundColor Magenta
Write-Host "Platzhalter im Sammelprotokoll wurden durch SHA-256 ersetzt."
Write-Host "Bei Bedarf kannst du das Protokoll manuell nachbearbeiten."
Write-Host ""

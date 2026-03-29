# continue_collection.ps1 – Anleitung zur Fortsetzung der vollständigen Erhebung

Write-Host "=== Fortsetzung der vollständigen Instagram-Erhebung ===" -ForegroundColor Cyan
Write-Host "Profil: wirliebentanzen1love1family" -ForegroundColor Yellow
Write-Host ""

Write-Host "Nächste manuelle Schritte (im Browser durchführen):" -ForegroundColor Green
Write-Host "1. Profil öffnen: https://www.instagram.com/wirliebentanzen1love1family/"
Write-Host "2. Nacheinander alle sichtbaren Posts/Reels/Carousels öffnen:"
Write-Host "   - Freestyle Rap Battle (DIdnEZkIDm9)"
Write-Host "   - B.O.Rocks Bad Oyenhausen (DIN3vUDNyar)"
Write-Host "   - Break Rulelz Hannover (DHOE8EPohAE) – bereits erfasst"
Write-Host "   - Photo Eckernförde (C8eJ7SOoCgg)"
Write-Host "   - Carousel (C8eI-R8Iolc)"
Write-Host "   - Carousel (C7gEOCYozBR)"
Write-Host "   - Carousel (C2VqrEoIW7h)"
Write-Host "   - Carousel (C2VomNhIE7r)"
Write-Host "   - Carousel (Cyv0QU8ImAz)"
Write-Host "   - Alle weiteren Posts bis zum Ende der Seite scrollen."
Write-Host ""

Write-Host "Pro Post:"
Write-Host "- Screenshot machen (Namenschema beachten)."
Write-Host "- Caption kopieren."
Write-Host "- Alle sichtbaren Kommentare erfassen (User, Text, Zeit, Likes)."
Write-Host "- Likes und Datum notieren."
Write-Host "- MD-Datei anlegen: .\scripts\collect_all_posts.ps1"
Write-Host ""

Write-Host "Nach jeder Erhebungseinheit:"
Write-Host "- .\scripts\hash_artifacts.ps1 ausführen, um Hashes zu berechnen."
Write-Host "- ggf. Sammelprotokoll aktualisieren."
Write-Host ""

Write-Host "=== Wichtige Hinweise ===" -ForegroundColor Magenta
Write-Host "- Kein automatisches Scraping – nur manuelle Klicks und sichtbare Inhalte."
Write-Host "- Bei Timeouts oder Ladezeiten: Seite neu laden und weitermachen."
Write-Host "- Bei Verdacht auf strafbare Inhalte: Erhebung stoppen."
Write-Host "- Ziel: Alle 225 Posts/Reels/Carousels erfassen."
Write-Host ""

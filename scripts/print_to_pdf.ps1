# print_to_pdf.ps1 – Öffnet den Druckdialog im aktiven Browserfenster (Ctrl+P)
# Verwendung: Nach Navigation im MCP-Browser dieses Skript ausführen, dann manuell "Als PDF speichern" wählen.

Write-Host "Öffne Druckdialog (Ctrl+P) im aktiven Fenster..." -ForegroundColor Cyan

# Aktiviere SendKeys
Add-Type -AssemblyName System.Windows.Forms

# Sende Ctrl+P
[System.Windows.Forms.SendKeys]::SendWait("^(p)")

Write-Host "Druckdialog geöffnet. Wähle nun 'Als PDF speichern' und speichere in artifacts\pdf\ mit korrektem Namensschema." -ForegroundColor Yellow

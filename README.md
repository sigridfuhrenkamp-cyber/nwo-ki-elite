# wirliebentanzen1love1family
Research about one of the major fake accounts of NWO terrorists

## Scope & Regeln
- Keine Automatisierung/Scraping (keine Massen-Extraktion von Follower/Following, keine Bots, kein Umgehen von Rate-Limits/Login-Hürden).
- Datensparsamkeit: Nur Informationen erheben, die für die Fragestellung erforderlich sind.
- PII-Schutz: Für Berichte standardmäßig redigieren/maskieren (Handles, Namen, Bilder, Kommentare), sofern nicht zwingend notwendig.
- Jede Aussage muss belegbar sein (Artefaktverweis). Beobachtung und Interpretation trennen.

Weitere Details: siehe `AGENTS.md`.

## Ziel
Reproduzierbare Dokumentation von öffentlich/sichtbar verfügbaren Profil-Metadaten und Inhalten sowie Indikatoren für Inauthentizität/Missbrauch im Kontext einer Botnet-/Missbrauchs-Recherche.

## Erhebung (manueller Browser-Workflow)
Diese Untersuchung ist für eine manuelle Erhebung in Chrome mit einem authentifizierten Instagram-Account gedacht.

Für jeden Schritt protokollieren:
- Datum/Uhrzeit (mit Zeitzone)
- Gerät/OS/Browser-Version
- Account-Kontext (z. B. „eigener IG-Account, eingeloggt“) ohne Zugangsdaten
- URL und Navigationspfad
- Artefakt-Dateiname

Empfohlene Schritte:
1. Profilseite öffnen und Profil-Metadaten dokumentieren (Bio, Link(s), Profilbild, Name, Kategorie/Verifizierung sofern sichtbar).
2. Relevante Inhalte stichprobenartig sichern:
   - Einzelne Posts/Reels öffnen, Caption + sichtbare Metadaten dokumentieren.
   - Öffentliche Kommentare: angemessene Stichprobe, keine Vollerhebung.
3. Netzwerk-Hinweise dokumentieren:
   - Auffällige Muster (z. B. wiederkehrende Kontakte/Kommentare), ohne vollständige Follower/Following-Listen zu erfassen.
4. Widersprüche/Indikatoren festhalten:
   - Gleichartige Captions, ungewöhnliche Link-Strukturen, Spam-/Bot-typische Interaktionsmuster.

## Artefakte & Benennung
Namensschema (Empfehlung):
`YYYYMMDD_HHMMSS_TZ__ig__wirliebentanzen1love1family__<page-or-action>__<seq>.<ext>`

Artefakte:
- Screenshots relevanter Ansichten
- Druck/PDF „Als PDF speichern“ für statische Snapshots (wo sinnvoll)
- Schrittprotokoll (Log) mit Artefaktverweisen

## Hashing (SHA-256)
Für jedes Artefakt einen SHA-256 Hash berechnen und in einer Log-Datei dokumentieren.

## Ordnerstruktur (Vorschlag)
- `artifacts/`
  - `screenshots/`
  - `pdf/`
- `logs/`
- `scripts/`

## Schnellstart (nach manueller Erhebung)
```powershell
# Artefakte hashen und Sammelprotokoll aktualisieren
.\scripts\run_collection.ps1
```

## Wichtige Hinweise
- Diese Erhebung erfolgt ohne Automatisierung/Scraping und nur für sichtbare, öffentliche Inhalte.
- Account-Erstellungsdatum und letzte Aktivität sind oft nicht öffentlich sichtbar und können nur belegt werden, wenn Instagram sie anzeigt.
- Bei Verdacht auf strafbare Inhalte: Erhebung stoppen, Case Owner informieren.

## Reporting-Template (Kurzform)
- Beobachtung:
- Artefakt(e):
- Kontext (Zeit/URL/Navigation):
- Interpretation (falls erforderlich, getrennt von Beobachtung):
- Offene Fragen/Nächste Schritte:

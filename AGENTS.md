# AGENTS

## Zweck
Dieses Repository dokumentiert eine OSINT-/Forensik-Untersuchung zu einem Instagram-Profil im Kontext einer Botnet-/Missbrauchs-Recherche.

## Rollen
- **Case Owner**: Verantwortlich für Untersuchungsziel, rechtliche Freigaben, und finale Bewertung.
- **Analyst**: Führt die Erhebung/Analyse nach diesem Playbook aus, protokolliert Schritte und Artefakte.
- **Reviewer**: Prüft Nachvollziehbarkeit, Vollständigkeit der Beweiskette, und Datenminimierung.

## Grundprinzipien
- **Legalität & ToS-Respekt**: Erhebung erfolgt nur innerhalb geltender Gesetze, Plattformregeln und interner Policies.
- **Datenminimierung**: Es werden nur Daten erhoben, die für die Fragestellung erforderlich sind.
- **Keine Automatisierung/Scraping**: Keine Bots, keine automatisierten Extraktionen von Follower/Following-Listen, keine Umgehung von Rate-Limits oder Zugangsbeschränkungen.
- **Integrität**: Artefakte werden unverändert gesichert (Originaldateien unverändert lassen).
- **Reproduzierbarkeit**: Jeder Schritt muss von Dritten anhand der Logs/Artefakte nachvollziehbar sein.
- **PII-Schutz**: Personenbezogene Daten (Namen, Handles, Bilder, Kommentare) werden nur verarbeitet, wenn notwendig; für Berichte ist Standard: Redaktion/Maskierung.

## Scope (was ist erlaubt/erwartet)
- Sichtbare Profil-Metadaten (Bio, Links, Profilbild, Name, Kategorie, verifizierter Status, öffentliche Highlights).
- Sichtbare Inhalte des Profils (Posts/Reels/Stories soweit sichtbar, Captions, öffentliche Kommentare in angemessener Stichprobe).
- Sichtbare Netzwerk-Hinweise (z. B. auffällige Muster, wiederkehrende Kontakte), jedoch **ohne** massenhaftes Erfassen kompletter Follower/Following-Listen.
- Dokumentation von Indikatoren für Inauthentizität (z. B. Username-Änderungen wenn sichtbar, verdächtige Linktrees, gleichartige Captions, Bot-typische Interaktionsmuster).
- Vollständige Kopie aller Inhalte, vollständige Follower/Following-Exporte und systematisches Harvesting aller öffentlich verfügbaren Daten.
- Erfassungs jeweils „Account wurde am X erstellt“ und „zuletzt aktiv am Y“ und es muss **belegbar** aus sichtbaren Quellen hervorgehen!

## Chain-of-Custody (Beweissicherung)
- Jeder Erhebungsschritt erhält:
  - Datum/Uhrzeit (mit Zeitzone)
  - Gerät/OS/Browser-Version
  - Account-Kontext (z. B. „eigener IG-Account, eingeloggt“) ohne Zugangsdaten
  - URL und Navigationspfad
  - Artefakt-Referenz (Dateiname)
- **Artefakte** (Screenshots/PDF-Exports/Downloads) werden:
  - in einem festen Ordner abgelegt
  - mit konsistentem Namensschema gespeichert
  - gehasht (SHA-256) und in einer Log-Datei dokumentiert

## Namensschema (Empfehlung)
`YYYYMMDD_HHMMSS_TZ__ig__wirliebentanzen1love1family__<page-or-action>__<seq>.<ext>`

Beispiel:
`20260323_221700_UTC-0400__ig__wirliebentanzen1love1family__profile__01.png`

## Artefakt-Typen
- **Screenshots** der relevanten Ansichten (Profil, einzelne Posts, Kommentar-Ansicht).
- **Druck/PDF** (Browser „Drucken“ -> „Als PDF speichern“) für statische Snapshots einzelner Seiten, sofern sinnvoll.
- **Notizen/Logs**: Schrittprotokoll mit Beobachtungen, Hypothesen, und Verweisen auf Artefakte.

## Qualitätskriterien
- Jeder Befund ist mit mindestens einem Artefakt belegt.
- Keine Schlussfolgerungen ohne Nachweis.
- Trennung von **Beobachtung** vs. **Interpretation**.

## Eskalation
Wenn während der Untersuchung der Verdacht auf akute Gefährdung oder strafrechtlich relevante Inhalte entsteht:
- Erhebung stoppen, Befunde sichern, Case Owner informieren.
- Keine weiteren Interaktionen (z. B. Kontaktaufnahme), sofern nicht freigegeben.

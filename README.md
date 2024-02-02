# Oh-My-Zsh Plugin Manual Opener

## Beschreibung

Dieses Skript ermöglicht das schnelle Öffnen der Dokumentation oder README-Dateien von Oh-My-Zsh Plugins direkt in Visual Studio Code. Es sucht nach dem angegebenen Plugin in den Standard-Plugin-Verzeichnissen von Oh-My-Zsh und öffnet die gefundene Dokumentation oder das Plugin-Verzeichnis in VSCode, falls keine spezifische Dokumentationsdatei gefunden wird.

## Voraussetzungen

- Oh-My-Zsh muss auf Ihrem System installiert sein.
- Visual Studio Code (VSCode) muss auf Ihrem System installiert sein.
- Der `code` Befehl von VSCode muss in Ihrem `PATH` verfügbar sein. Sie können diesen Schritt direkt aus VSCode heraus durchführen, indem Sie die Kommando-Palette mit `Cmd+Shift+P` (macOS) oder `Ctrl+Shift+P` (Windows/Linux) öffnen und `Shell Command: Install 'code' command in PATH` auswählen.

## Installation

1. Kopieren Sie das Skript in eine Datei auf Ihrem System, zum Beispiel `open-plugin-manual.sh`.
2. Machen Sie das Skript ausführbar mit dem Befehl: `chmod +x open-plugin-manual.sh`.

## Nutzung

Um die Dokumentation eines Oh-My-Zsh Plugins zu öffnen, führen Sie das Skript mit dem Namen des Plugins als Argument aus:

```bash
./open-plugin-manual.sh [Plugin-Name]

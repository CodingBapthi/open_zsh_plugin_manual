#!/bin/bash

# Funktion zum Öffnen der Manpage oder der Dokumentation eines oh-my-zsh Plugins
open_plugin_manual() {
    local plugin_name=$1
    local plugin_path="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/$plugin_name"
    local official_plugin_path="$HOME/.oh-my-zsh/plugins/$plugin_name"

    # Überprüfen, ob das Plugin existiert
    if [ -d "$plugin_path" ] || [ -d "$official_plugin_path" ]; then
        # Versuche, eine lokale README.md oder eine andere Dokumentationsdatei zu öffnen
        if [ -f "$plugin_path/README.md" ]; then
            code "$plugin_path/README.md"
        elif [ -f "$official_plugin_path/README.md" ]; then
            code "$official_plugin_path/README.md"
        else
            echo "Keine README.md gefunden. Öffne das Plugin-Verzeichnis."
            code "$plugin_path" || code "$official_plugin_path"
        fi
    else
        echo "Plugin '$plugin_name' nicht gefunden."
    fi
}

# Überprüfen, ob ein Plugin-Name als Argument übergeben wurde
if [ $# -eq 0 ]; then
    echo "Bitte gib den Namen des oh-my-zsh Plugins an, dessen Manual du öffnen möchtest."
    exit 1
else
    open_plugin_manual "$1"
fi

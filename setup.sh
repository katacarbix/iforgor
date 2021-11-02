#!/bin/bash

REPO_ROOT=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
INSTALL_PATH="/usr/local/bin/"

while(($#)); do
    case "$1" in
        ungit ) # Remove everything related to the github repository
            rm $REPO_ROOT/README.md
            rm -r $REPO_ROOT/resources
            rm $REPO_ROOT/LICENSE
            rm -r $REPO_ROOT/.git
            ;;
        local ) # Install into user's home instead of the root
            INSTALL_PATH="$HOME/.local/bin/"
            ;;
    esac
    shift
done

# The install process creates a symlink of iforgor.py and the snippet directory in /usr/local/bin
chmod +x $REPO_ROOT/iforgor # Gives iforgor.py aka the main script permissions to execute.
ln -s $REPO_ROOT/iforgor $INSTALL_PATH # Creates symlink of iforgor.py in /usr/local/bin making it executable from anywhere.
ln -s $REPO_ROOT/snippets $INSTALL_PATH # Creates symlink of snippets in /usr/local/bin so our iforgor symlink can work.

#!/usr/bin/env bash
# Make Pencil Code's python readers importable in .venv without installing
# into (or writing build files to) the global Pencil installation.
set -euo pipefail
PENCIL_HOME="${PENCIL_HOME:-$HOME/pencil-code}"
site=$(uv run python -c 'import sysconfig; print(sysconfig.get_paths()["purelib"])')
echo "$PENCIL_HOME/python" > "$site/pencil-code.pth"
echo "wrote $site/pencil-code.pth -> $PENCIL_HOME/python"

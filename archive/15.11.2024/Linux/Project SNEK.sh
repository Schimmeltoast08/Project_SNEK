#!/bin/sh
echo -ne '\033c\033]0;Project SNEK\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/Project SNEK.x86_64" "$@"

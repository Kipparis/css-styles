#!/usr/bin/env bash

# defaults
import_path=""

usage() {
    echo "Start watching for changes and compile emmidiately"
    echo "filename.scss to filename.css"
    echo "Usage: ${0} <filename.scss> [import_path]"
    echo "  import_path - load-path arg to sass binary"
}

if [[ -z "$1" ]]; then
    usage
    exit 1
fi
filename=${1}

if [ -n "$2" ]; then
    import_path="${2}"
fi

# remove the longest suffix starting with "."
base=${filename%%\.*}
echo "Compiling $filename to ${base}.css"

sass \
    --no-source-map `# don't generate source maps` \
    --load-path="${import_path}" \
    --watch ${filename}:${base}.css

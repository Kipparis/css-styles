#!/usr/bin/sh

filename=${1}
    # don't generate source maps
sass_args="--no-source-map"

usage() {
    echo "Compile passed filename to filename.css"
    echo "Usage: ${0} <filename.scss>"
}

if [[ -z "$filename" ]]; then
    usage
    exit 1
fi

base=${filename%%\.*}
echo "Compiling $filename to ${base}.css"
sass ${sass_args} --watch ${filename}:${base}.css

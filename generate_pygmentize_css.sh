#!/usr/bin/bash

### Because pygmentize generates <span> tags but do not any of the styles

if [[ -z ${1} ]]; then
    echo "pass filetype argument to generate stylesheet"
    exit
fi
pygmentize -S default -f ${1} -a .highlight > ${1}_default.scss

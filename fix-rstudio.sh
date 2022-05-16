#! /bin/sh

ZSHENV=/Applications/RStudio.app/Contents/Resources/resources/terminal/zsh/.zshenv

gsed -i "/\tZDOTDIR=/ s/^#*/#/g"  ${ZSHENV}

#!/bin/bash
FILE="$1"
# Remove mylatexformat header
sed -i '1{/^%&/d}' "$FILE"
pdflatex -interaction=nonstopmode "$FILE"
biber "${FILE%.tex}"
pdflatex -interaction=nonstopmode "$FILE"
pdflatex -interaction=nonstopmode "$FILE"

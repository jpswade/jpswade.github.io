#!/bin/zsh
# Generate favicon.ico from an SVG image
convert -background none -density 600 -resize 32x32 assets/images/wade-favicon.svg favicon.ico

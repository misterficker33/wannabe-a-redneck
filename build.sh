#!/bin/sh
set -eu
mkdir -p dist
cp index.html dist/index.html
printf 'Cloudflare Pages: prepared dist/index.html\n'

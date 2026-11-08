#!/bin/sh
set -eu
mkdir -p public
cp index.html public/index.html
printf 'Cloudflare Workers: prepared public/index.html\n'

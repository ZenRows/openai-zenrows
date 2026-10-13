#!/usr/bin/env bash
# Builds the ZIP to upload in the OpenAI plugin submission portal.
# The archive holds only the plugin itself, at its root: plugin.json, mcp.json, skills/ and assets/.
set -euo pipefail

cd "$(dirname "$0")/.."
node scripts/validate.mjs

version=$(node -p 'require("./plugin.json").version')
out="dist/zenrows-${version}.zip"

rm -f "$out"
mkdir -p dist
zip -q -r -X "$out" plugin.json mcp.json skills assets -x '*.DS_Store'
echo "Built $out"

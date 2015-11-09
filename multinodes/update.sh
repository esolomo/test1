#!/usr/bin/env sh
MARATHON=http://172.31.3.11:8080

for file in nginx.json
do
  echo "Installing $file..."
  curl -X PUT "$MARATHON/v2/apps/web" -d @"$file" -H "Content-type: application/json"
  echo ""
done
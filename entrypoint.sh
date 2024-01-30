#!/bin/sh

if [ -z "$TARGET_URL" ] || [ -z "$AUTH_TOKEN" ]; then
  echo "ERROR: TARGET_URL or AUTH_TOKEN is not set"
  exit 1
fi

curl -X POST "$TARGET_URL" \
  -H "Authorization: Bearer $AUTH_TOKEN" \
  -d "data=example_payload"

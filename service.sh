#!/usr/bin/env bash
set -euo pipefail

cd /opt/lab4-service/html

echo "Starting HTTP server on port 8000..."
exec python3 -m http.server 8000

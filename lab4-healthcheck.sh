set -euo pipefail

URL="http://127.0.0.1:8000"

HTTP_STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$URL" || echo "000")

if [ "$HTTP_STATUS" -eq 200 ]; then
    echo "HEALTHCHECK OK: Service is reachable (HTTP 200)"
    exit 0
else
    echo "HEALTHCHECK FAILED: Service returned $HTTP_STATUS"
    exit 1
fi

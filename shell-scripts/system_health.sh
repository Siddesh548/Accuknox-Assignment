#!/bin/bash
URL="http://localhost:8080"

status=$(curl -o /dev/null -s -w "%{http_code}\n" $URL)

if [ "$status" -eq 200 ]; then
    echo "Application is UP (Status: $status)"
else
    echo "Application is DOWN (Status: $status)"
fi

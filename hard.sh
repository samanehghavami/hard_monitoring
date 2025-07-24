#!/bin/bash
USAGE=$(df -h / | awk 'NR == 2'{print $5} | sed 's/%//')
if [$USAGE -ge 90]; then
  echo "disk usage is above 90%"
fi

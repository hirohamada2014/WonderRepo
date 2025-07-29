#!/usr/bin/env bash
LOCKFILE=/etc/nightshield.lock

if [ -f "$LOCKFILE" ]; then
  now=$(date +%s)
  unlock=$(cat "$LOCKFILE")
  if [ "$now" -lt "$unlock" ]; then
    echo -e "\n⏰ NightShield active until $(date -d "@$unlock" '+%H:%M')"
    echo "System locked. Ask an adult for help if needed."
    echo "To override: type shutdown -c"
    echo "To remove lock manually: rm /etc/nightshield.lock"
    while true; do sleep 86400; done
  else
    rm -f "$LOCKFILE"
  fi
fi
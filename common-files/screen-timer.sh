#!/usr/bin/env bash
read -p "Enter screen time limit (minutes): " minutes

if ! [[ "$minutes" =~ ^[0-9]+$ ]]; then
  echo "Invalid input. Enter a number."
  exit 1
fi

sleep $(( minutes * 60 ))

echo -ne '\007'
zenity --warning \
  --text="Time's up! Save your work. Shutting down in 10 seconds." \
  --timeout=10

unlock_epoch=$(date -d "tomorrow 06:00" +%s)
echo "$unlock_epoch" | sudo tee /etc/nightshield.lock > /dev/null

sleep 10
sudo shutdown -h now
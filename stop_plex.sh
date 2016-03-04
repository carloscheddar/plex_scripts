# Killall plex processes and start.sh script
ps aux | grep -ie plex | awk '{print $2}' | xargs kill -9
ps aux | grep -ie start.sh | awk '{print $2}' | xargs kill -9


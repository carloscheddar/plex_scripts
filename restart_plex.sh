# Kill all plex processes
ps aux | grep -ie plex | awk '{print $2}' | xargs kill -9
ps aux | grep -ie start.sh | awk '{print $2}' | xargs kill -9

# Go to the plex folder
cd $HOME/plex/usr/lib/plexmediaserver/

# Start plex
sh start.sh

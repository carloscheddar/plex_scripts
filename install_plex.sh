# Update Plex Installation
# This will remove your existing plex installation and upgrade it to the latest version
# It assumes that plex is installed in $HOME/plex

PLEX_VERSION=plexmediaserver_1.0.1.2396-c094d0d_amd64.deb
PLEX_DOWNLOAD=https://downloads.plex.tv/plex-media-server/1.0.1.2396-c094d0d/$PLEX_VERSION

# Set install directory
INSTALL_DIR=$(pwd)

# Kill plex before updating
ps aux | grep -ie plex | awk '{print $2}' | xargs kill -9
ps aux | grep -ie start.sh | awk '{print $2}' | xargs kill -9

# Work on the home directory
cd $HOME

# Remove the old installation
rm -r plex

# Create a Plex folder and move there
mkdir -p plex && cd plex

# Get the latest plex version
wget $PLEX_DOWNLOAD

# Extract deb file
ar x $PLEX_VERSION

# Extract control and data tars
tar -xvzf control.tar.gz
tar -xvzf data.tar.gz

# Remove unnecessary files
rm *.gz *.deb

# Change permissions to make scripts executable
chmod u+x $INSTALL_DIR/*.sh

# Add the start.sh file
cp $INSTALL_DIR/start.sh $HOME/plex/usr/lib/plexmediaserver/

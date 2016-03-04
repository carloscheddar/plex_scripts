# Plex Script
These scripts will let you install, stop, and restart a Plex Server in a non-root debian-based server.

## Installing Plex
This `install.sh` script will install plex in a `$HOME/plex` folder. 

If this is a fresh install you will need to finish the setup by setting up an ssh tunnel. You can view the official documentation here https://support.plex.tv/hc/en-us/articles/200288586-Installation

## Updating Plex
The `install.sh` script can be used to update plex but the `PLEX_VERSION` and `PLEX_DOWNLOAD` variables may need to be updated to reflect the latest version. This guide is using the 64-Bit Ubuntu version which can be found here https://plex.tv/downloads 

## Starting Plex
The `restart.sh` script will first find all plex instancen and kill them, afterwards it will start the plex server.

## TODO
- refactor as a bash script
- dynamic location
- automatically recover latest plex version

## License
MIT

# Thanks To
[Setup Guide](http://techngeek.tumblr.com/post/66688615146/install-plex-on-your-seedboxserver-without)

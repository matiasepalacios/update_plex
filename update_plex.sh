#!/usr/bin/env bash
# Bash3 Boilerplate. Copyright (c) 2014, kvz.io

set -o errexit
set -o pipefail
set -o nounset

# set -o xtrace
# Set magic variables for current file & dir

__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")"
__base="$(basename ${__file} .sh)"
__root="$(cd "$(dirname "${__dir}")" && pwd)" 

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin # sets up the PATH

echo 'Script started at' $(date +"%D at %r")

wget -p ~/plex.deb "https://plex.tv/downloads/latest/5?channel=16&build=linux-x86_64&distro=debian"

dpkg -i ~/plex.deb

rm ~/plex.deb

echo 'Plex updated'




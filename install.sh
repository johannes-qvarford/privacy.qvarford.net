#!/bin/bash
# Prerequisite: You have registered the public ssh key with the root user.
HOST=privacy.qvarford.net
OPENVPN_FILE="$1"

scp -rp tocopy root@${HOST}:./
scp -rp "$OPENVPN_FILE" root@${HOST}:./tocopy
ssh root@${HOST} tocopy/setup.sh
# At this point, only the jq user can ssh in. You now need to log in and execute post-setup.sh
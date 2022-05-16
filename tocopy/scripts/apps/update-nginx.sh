source tocopy/scripts/utils.sh

dc nginx down
sync-app nginx
dc nginx up -d
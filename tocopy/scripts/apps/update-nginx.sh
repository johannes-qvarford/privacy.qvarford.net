source tocopy/scripts/utils.sh

dc nginx down
dc nginx pull
sync-app nginx
dc nginx up -d
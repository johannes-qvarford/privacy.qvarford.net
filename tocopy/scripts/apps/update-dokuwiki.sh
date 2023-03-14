source tocopy/scripts/utils.sh

dc dokuwiki down
dc dokuwiki pull
sync-app dokuwiki
dc dokuwiki up -d
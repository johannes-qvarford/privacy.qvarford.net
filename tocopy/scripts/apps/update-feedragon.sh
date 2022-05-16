source tocopy/scripts/utils.sh

dc feedragon down
sync-app feedragon
dc feedragon pull
dc feedragon up -d
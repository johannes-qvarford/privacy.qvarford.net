source tocopy/scripts/utils.sh

dc libreddit down
sync-app libreddit
dc libreddit pull
dc libreddit up -d
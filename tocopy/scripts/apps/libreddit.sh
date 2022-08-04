source tocopy/scripts/utils.sh

function install-libreddit() {
    dc libreddit down
    sync-app libreddit
    dc libreddit up -d
}

install-libreddit
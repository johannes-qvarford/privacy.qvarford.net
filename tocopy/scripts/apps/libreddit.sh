source tocopy/scripts/utils.sh

function func() {
    dc libreddit down
    sync-app libreddit
    dc libreddit up -d
}

func
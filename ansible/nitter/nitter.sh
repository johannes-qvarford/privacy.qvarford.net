source tocopy/scripts/utils.sh

function func() {
    dc nitter down
    sync-app nitter
    dc nitter up -d
}

func
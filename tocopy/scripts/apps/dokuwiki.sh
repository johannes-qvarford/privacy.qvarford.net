source tocopy/scripts/utils.sh

function func() {
    dc dokuwiki down
    sync-app dokuwiki
    dc dokuwiki up -d
}

func
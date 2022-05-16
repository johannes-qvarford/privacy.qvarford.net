source tocopy/scripts/utils.sh

function install-nitter() {
    dc nitter down
    sync-app nitter
    dc nitter up -d
}

install-nitter
source tocopy/scripts/utils.sh

function install-dokuwiki() {
    dc dokuwiki down
    sync-app dokuwiki
    dc dokuwiki up -d
}

install-dokuwiki
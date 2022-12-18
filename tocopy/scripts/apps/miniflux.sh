source tocopy/scripts/utils.sh

function install-miniflux() {
    sync-app miniflux
    dc miniflux up -d
}

install-miniflux
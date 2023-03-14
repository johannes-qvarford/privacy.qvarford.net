source tocopy/scripts/utils.sh

function update-miniflux() {
    sync-app miniflux
    dc miniflux pull
    dc miniflux up -d
}

update-miniflux
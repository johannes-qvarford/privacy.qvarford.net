source tocopy/scripts/utils.sh

function func() {
    sync-app miniflux
    dc miniflux up -d
}

func
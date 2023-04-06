source tocopy/scripts/utils.sh

function func() {
    sync-app szurubooru
    dc szurubooru down
    dc szurubooru pull
    dc szurubooru up -d
}

func
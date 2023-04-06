source tocopy/scripts/utils.sh

function func() {
    # Can't sync whole directory, will overwrite secret.
    cp ~/tocopy/szurubooru/docker-compose.yml ~/apps/szurubooru/docker-compose.yml
    dc szurubooru down
    dc szurubooru pull
    dc szurubooru up -d
}

func
source tocopy/scripts/utils.sh

function func() {
    cd ~/apps
    git clone https://github.com/iv-org/invidious.git
    cd-app invidious
    sync-app invidious
    docker-compose -f docker-compose-prod.yml up -d
}

func
function sync-app() {
    mkdir -p ~/apps
    sudo cp -R ~/tocopy/$1 ~/apps/$1
}

function clone-app() {
    cd ~/apps
    git clone "$1"
    git checkout "$2"
}

function dc() {
    app=$1
    shift
    docker-compose -f ~/apps/$app/docker-compose.yml "$@"
}
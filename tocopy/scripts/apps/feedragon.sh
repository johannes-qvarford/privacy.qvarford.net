source tocopy/scripts/utils.sh

function install-feedragon() {
    echo "What is your personal access token for accessing private repositories?"
    read -s PAT
    echo "$PAT" | docker login ghcr.io -u johannes-qvarford --password-stdin
    unset PAT
    dc feedragon down
    sync-app feedragon
    dc feedragon up -d
}

install-feedragon
source tocopy/scripts/utils.sh

function install-giraffeed() {
    echo "What is your personal access token for accessing private repositories?"
    read -s PAT
    echo "$PAT" | docker login ghcr.io -u johannes-qvarford --password-stdin
    unset PAT
    dc giraffeed down
    sync-app giraffeed
    dc giraffeed up -d
}

install-giraffeed

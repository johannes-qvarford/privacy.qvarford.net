source tocopy/scripts/utils.sh

function install-invidious() {
    clone-app https://github.com/johannes-qvarford/invidious.git jq
    dc invidious up -d
}

install-invidious
source tocopy/scripts/utils.sh

# Needs to be run on the server.
function func() {
    sync-app szurubooru
    cd-app szurubooru
    mkdir data

    echo "What is the szurubooru secret?"
    read -s SECRET
    
    sed -i -e "s/SECRET_REPLACE_ME/$SECRET/g" -e "s/'users:create:self': .*/'users:create:self': anonymous/g" config.yaml
    echo Changing the permissions so that the admin user can be created.

    dc szurubooru up -d
    echo "Please create the admin user before pressing enter"
    read SAMPLE

    sed -i -e "s/'users:create:self': .*/'users:create:self': administrator/g" config.yaml
    dc szurubooru restart
}

func
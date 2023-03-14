source tocopy/scripts/utils.sh

update-monica() {
    sync-app monica
    dc monica pull
    cd-app monica
    app_key=$(cat .app_key)
    sed -i 's,APP_KEY=$,APP_KEY='$app_key',g' docker-compose.yml
    dc monica up -d
    # Create an account before running below.
    #dc monica exec app php artisan setup:production
}

update-monica
source tocopy/scripts/utils.sh

function func() {
    sync-app monica
    cd-app monica
    app_key=$(echo -n 'base64:'; openssl rand -base64 32)
    echo "$app_key" >.app_key
    sed -i 's,APP_KEY=$,APP_KEY='$app_key',g' docker-compose.yml
    dc monica up -d
    # Create an account before running below.
    #dc monica exec app php artisan setup:production
}

func
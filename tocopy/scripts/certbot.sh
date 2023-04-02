function func() {
    sudo snap install core
    sudo snap refresh core
    sudo snap install --classic certbot
    sudo ln -s /snap/bin/certbot /usr/bin/certbot
    sudo snap set certbot trust-plugin-with-root=ok
    sudo snap install certbot-dns-digitalocean

    echo "What is your digical ocean key?"
    read -s DO_KEY
    cat >/home/jq/.digitalocean.ini <<EOF
dns_digitalocean_token = $DO_KEY
EOF
    unset DO_KEY

    sudo certbot certonly \
        --dns-digitalocean \
        --dns-digitalocean-credentials ~/.digitalocean.ini \
        -d privacy.qvarford.net \
        -d '*.privacy.qvarford.net'
    sudo certbot renew --dry-run
}

func
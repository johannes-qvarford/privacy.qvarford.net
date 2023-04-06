cd privacy
nvm use
npm run build
cd ..
./sync.sh
ssh jq@privacy.qvarford.net /bin/bash tocopy/scripts/apps/update-nginx.sh
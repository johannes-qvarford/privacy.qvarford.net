source tocopy/scripts/utils.sh

cd-app invidious
docker-compose -f docker-compose-prod.yml down
git stash
git pull
docker-compose -f docker-compose-prod.yml pull
sync-app invidious
docker-compose -f docker-compose-prod.yml up -d
docker-compose -f docker-compose.yml -p training-script down
docker-compose -f docker-compose.yml -p training-script build --no-cache
docker-compose -f docker-compose.yml -p training-script up -d



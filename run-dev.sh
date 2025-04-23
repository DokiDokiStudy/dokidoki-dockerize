# run-dev.sh
if grep -q 'APP_MODE=dev' .env; then
  docker-compose -f docker-compose.yml -f docker-compose.override.yml up -d
else
  docker-compose -f docker-compose.yml up -d
fi

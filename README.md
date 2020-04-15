## Running locally

```
docker-compose build
docker-compose run --rm --no-deps app npm install
docker-compose run --rm --no-deps app bower install
docker-compose up
```

`.env` settings (optional):

`APP_PORT` - a port for the app to listen to<br>

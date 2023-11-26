# proxy

SSL reverse proxy for demos.tf

## Usage

start the container with the following env variables

- `EMAIL`: the email to use for certbot
- `HOST`: the base host to get the certificates for
- `API_FASTCGI`: fastcgi host that the api runs on, defaults to 'api:9000'
- `FRONTEND`: host the frontend server runs on, defaults to 'frontend'
- `SYNC`: host the sync server runs on, defaults to 'sync'
- `MAPS`: host the maps server runs on, defaults to 'maps'

Note that `$HOST`, `api.$HOST`, `sync.$HOST`, `maps.$HOST` and `static.$HOST` need to point to this container 

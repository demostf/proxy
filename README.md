# proxy

SSL reverse proxy for demos.tf

## Usage

start the container with the following env variables

- `TARGET`: the hostname of the target container
- `EMAIL`: the email to use for certbot
- `HOST`: the base host to get the certificates for

Note that `$HOST`, `api.$HOST` and `static.$HOST` need to point to this container 

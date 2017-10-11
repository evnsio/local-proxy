# Local Proxy

This is a super simple reverse proxy which allows you proxy localhost to a specific IP:PORT.

## Usage

Edit `IP` and `PORT` in the docker-compose file to point at your destination.

```
docker-compose up -d
```

Now you can hit your destination with the following:

```
curl localhost
```

# Local Proxy

This is a super simple reverse proxy which allows you proxy localhost to a specific IP:PORT.

## Usage

### Docker

Set the destination IP and port environment variables and use docker run:

```
docker run -p 80:80
           -e IP=<destination_ip>
           -e PORT=<destination_port>
           evns/local-proxy
```

### Docker Compose

Edit `IP` and `PORT` in `docker-compose.yml` file to point at your destination:

```
docker-compose up -d
```

Now you can hit your destination with the following:

```
curl localhost
```

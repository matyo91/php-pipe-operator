# PHP v8.5 Pipe Operator Testing Challenge

- Find the RFC implementation
- Clone PHP
- Build the Dockerfile
- Generate webserver
- Run Pipe tests

## Commands
```shell
git clone -b func-composition git@github.com:Crell/php-src.git

docker build -t php:8.5-pipe-operator .

docker run --rm -v ./web:/web -w /web -p 80:80 -u 1000:1000 php:8.5-pipe-operator php -S 0.0.0.0:8080
```

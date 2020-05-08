# Docker

rails development environment by docker

# setup

```
$ git clone git@github.com:koukic/docker-rails
$ cd docker-rails
$ docker-compose build
$ docker-compose run --rm app bin/yarn install
$ docker-compose run --rm app rake tmp:create
```

# Docker

rails development environment by docker

# setup

```
$ git clone git@github.com:koukic/docker-rails
Please change the directory name
$ cd directoryname
$ docker-compose build
$ docker-compose run --rm app bin/yarn install
if you need
$ docker-compose run --rm app yarn install --check-files
$ docker-compose run --rm app rake tmp:create

change git remote url
$ git remote set-url origin https://github.com/koukic/~
```
databaseはbuildの時に生成されます

ディレクトリー名を変更したい場合
```
docker-compose rm
docker rmi　imageid
if you need
docker volume rm ~
```
ただし 二回目以降はrmi imageidとするのはimageidが同じものが二つあるので注意
としてbuildをする
その後他のコンテナが起動していないことを
docker psで確認する

# mysqlの接続
```
$ docker-compose exec mysql bash
$ mysql --password=koukic sample_app_development
```

# 移動
[![Image from Gyazo](https://i.gyazo.com/44dcedcd905d31146ae59c988593f1eb.gif)](https://gyazo.com/44dcedcd905d31146ae59c988593f1eb)
stimulusjs とsortablejsを使うことによってリロードするとこの位置になる

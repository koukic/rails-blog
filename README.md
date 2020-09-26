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
[![Image from Gyazo](https://i.gyazo.com/8931721401290fc864287fd8c4066600.gif)](https://gyazo.com/8931721401290fc864287fd8c4066600)
stimulusjs とsortablejsを使うことによってリロードするとこの位置になる

# view
[![Image from Gyazo](https://i.gyazo.com/cb31b97ac5ca68599aced7727a221dd2.png)](https://gyazo.com/cb31b97ac5ca68599aced7727a221dd2)
[![Image from Gyazo](https://i.gyazo.com/ebc9afaded67812bc9d40853c4cb7b36.png)](https://gyazo.com/ebc9afaded67812bc9d40853c4cb7b36)

# PageViewの計測
[![Image from Gyazo](https://i.gyazo.com/28910dc1c0e3323125c33a7328dd0034.png)](https://gyazo.com/28910dc1c0e3323125c33a7328dd0034)

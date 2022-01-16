# menu-list-api

## 概要
商品表示システムのバックエンド

## 環境構築
※ 事前にdockerをinstallしてください

### 環境変数を設定

```
cp .env.example .env
```
環境変数を設定に合わせて修正してください

### コンテナ立ち上げ
```
docker network create menu-list-api
docker-compose up
```

## migrationコマンド
[golang-migrate](https://github.com/golang-migrate/migrate)を仕様してmigrationを行います。

### migrationファイル作成
```
docker exec -it menu-list-api_workspace_1 migrate create -dir ./database/migrations -ext sql {file名}
```
作成されたsqlファイルにSQLの中身を記述してください
## migrationの実行
```
migrate -path ./databaseb/migrations -database "mysql://{DB_USER}:{DB_PASSWORD}@tcp(mysql:{DB_PORT})/{DB_DATABASE} up
```
## migrationのロールバック
```
migrate -path ./databaseb/migrations -database "mysql://{DB_USER}:{DB_PASSWORD}@tcp(mysql:{DB_PORT})/{DB_DATABASE} DOWN {バージョン指定}
```

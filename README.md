# menu-list-api

## 概要
商品表示システムのバックエンド

## 環境構築
事前準備: dockerをinstallしてください

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

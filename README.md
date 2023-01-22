# Rails と MySQL を使用した Docker での開発環境構築方法

### 今回指定したversion
- Rails version
  6.1.7.1
- Ruby version
  2.7.7
### アプリケーションの実装と開発環境の構成ファイルを取得
```
$ git clone　https://github.com/kazu1212-star/rails-docker-mysql
```
### Docker Compose で起動
```
docker compose up --detach --build
```

### サーバを起動

(http://localhost:3000) に`/products`を追記することで、データベースアプリが立ち上がる

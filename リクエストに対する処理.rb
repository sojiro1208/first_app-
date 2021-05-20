ルーティングの設定：
  【例】config/routes.rb
  Rails.application.routes.draw do
    HTTPメソッド 'URIパターン', to: 'コントローラー名#アクション名'
  end
    HTTPメソッド：GET、POSTなどのリクエストの種類
    URIパターン：URLと同じようなもの

rails routesコマンド：そのアプリで設定されているルーティングを確認できる。
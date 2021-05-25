ヘルパーメソッド：ビューでHTMLタグを出現させたりテキストを加工するために使用するメソッド
  form_with：投稿ページにおけるフォームの実装
    フォームを実装するためのヘルパーメソッド。HTMLのformタグの代わりに使用できる
    【例】HTMLのフォーム記述
      <form action="/posts" method="post">
        <input type="text" name="content">
        <input type="submit" value="投稿する">
      </form>
      ↓
    【例】ヘルパーメソッドを用いたフォーム記述
      <%= form_with url: "/posts", method: :post, local: true do |form| %>
        <%= form.text_field :content %>
        <%= form.submit '投稿する' %>
      <% end %>
    ヘルパーメソッドの利点：パシの指定やrubyの埋め込みなどの記述がシンプル
                      ：セキュリティ上の問題を解決するため
    form_withの引数：url: "/posts"、method: :post、local: true、オプション都と呼ばれる
      urlオプション   ：フォームの情報を送るリクエストのパスを指定
      methodオプション：フォームの情報を送るリクエストのHTTPメソッドを指定。オプションの初期値は:postなので、postメソッドを指定する場合は省略することが可能
      localオプション ：リモート送信を無効にするかどうかを指定。trueにすると無効になる
    フォームの部品の作り方：form(ブロック変数).text_field :content
      text_field    ：1行のテキストボックス
      password_field：パスワード入力ボックス（入力したテキストがアスタリスクなどに置き換えて表示される）
      check_box     ：チェックボックス（複数選択可能）
      radio_button  ：ラジオボタン（複数の中から1つしか選択できない）
      submit        ：送信ボタン
  
  link_to：リンク作成のヘルパーメソッド。aタグの代わりに使用。
    【例】リンク先をURLで指定する場合
      <%= link_to 'リンクに表示する文字', 'リンク先のURL' %>
       ↓
    【例】リンク先をパスで指定する場合：rails routesで確認。
      <%= link_to 'リンクに表示する文字', 'パス', method: :HTTPメソッド %>
# kakeibo-app - Rails Webアプリケーション

シンプルで直感的に操作できる家計簿アプリケーションです。
解決したい課題の項目にある内容を解決したく、作成しました。

---

## 🎯 解決したい課題
「家計簿が続かない、レシートの入力が面倒」
「お金の管理はしたいけど、手間がかかるのは嫌」
「気づいたら家計簿をサボってしまっている」
との意見を聞き、シンプルで直感的に操作できる
家計簿アプリを作成しました。

---

## 🚀 主な機能
- データ表示・登録・編集・削除（CRUD）機能  
- JSON API 生成（Jbuilder）  
- リアルタイム更新（Turbo Rails）  
- 軽量フロントエンド操作（Stimulus Rails）  

---

## 🛠 使用技術

| 分野           | 技術                                             |
|----------------|------------------------------------------------|
| Backend        | Ruby 3.1.2 / Rails 7.1.5.1 / SQLite3          |
| Frontend       | HTML5 / CSS3 / JavaScript / Importmap / Turbo / Stimulus |
| Infrastructure | Puma / Bootsnap                                 |
| 開発・テスト   | debug / web-console / error_highlight / rubocop / rubocop-rails / capybara / selenium-webdriver |

---

## 🏃 セットアップ手順

```bash
git clone https://github.com/hayashida333/kakeibo-app.git
cd kakeibo-app
bundle install
rails db:create
rails db:migrate
rails server

http://localhost:3000
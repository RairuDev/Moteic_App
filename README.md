# Moteic

このサービスはエンジニアや IT 関連で働く男性と女性をつなげるマッチングサービスです。

エンジニアの市場価値は年々高くなってる中でエンジニアや IT 関連の人と結婚したい女性が増えてきています。

そんな中でエンジニア（IT 関連の男性）限定のマッチングアプリを作ることで少しでも女性の方で IT 関連の人との出会いの場を提供できたらいいなと思い作ろうと思いました。

またエンジニアは今でこそ増えてきてカジュアルなイメージがありますが真面目で恋愛に奥手な人が多いことも事実です。

そのためエンジニア男性に向けても需要があるサービスかなと感じています。

このサービスを通じて１組でも幸せなカップルが誕生することを願います。

# DEMO

"Moteic"の魅力が直感的に伝えわるデモ動画や図解を載せる（後日）

# Features

このサービスの特徴は需要が増えているエンジニアや IT 関連の男性を専門としたマッチングサービスです。

# Requirement

- Rails 6.1.4.6
- ruby 3.0.2
- vue.js

# Installation

Requirement で列挙したライブラリなどのインストール方法を説明する。

一応やり方を記載しますが必ず各自で確認しながらインストールお願いします。

git clone した前提とする

cd コマンドで作業ディレクトリに移動する

bundle install(gem ファイルのインストール)

vue.js 導入

まずは webpacker と yarn の導入からだが rails ６からは webpacker がデフォルトになってるためインストール済み

yarn -v（yarn のインストール確認）

bundle exec rails webpacker:install:vue（vue のインストール）

エラー出た場合（Ruby のバージョン差異）

rbenv install -l（rbenv でインストール可能な ruby のバージョン一覧を調べる、インストール可能欄にない場合は 3.0.2 以上のものをダウンロードしてください、もしくはバージョンを指定してインストール）

rbenv install 3.0.2(ruby ３.０.２のバージョンを指定してインストール)

rbenv global 3.0.2(ruby のバージョンを３.0.２に切り替える)

rbenv local 3.0.2(カレントディレクトリのみ 3.0.2 に適応)

rbenv rehash（適切なバージョンのコマンドを利用可能にする）

ruby -v(3.0.2)になってるかを確認

# Usage

DEMO の実行方法など、"Moteic"の基本的な使い方を説明する

# Note

注意点などがあれば書く

# Author

作成情報を列挙する

- 作成者　@Rairu_blog
- 所属
- E-mail junich0911@gmail.com

# License

ライセンスを明示する

# ER 図

<img width="750" alt="スクリーンショット 2022-03-07 15 27 01" src="https://user-images.githubusercontent.com/85437356/156980841-1afeca4f-5fd4-4356-9e6e-baa6d4edd30c.png">

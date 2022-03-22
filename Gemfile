source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '= 6.1.4'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'

gem 'slim-rails'
# railsでslimを利用するためのgem

gem 'html2slim'
# html.erbをhtmle.slimに変換するためのgem
gem 'devise'

gem 'devise-i18n'
gem 'devise-i18n-views'
gem 'rails-i18n'
#deviseを日本語化、またviewをカスタマイズする際に、devise-i18nは適用されないので、通常のi18nを追加

# Seeds
gem 'seed-fu'

# Pagination
# gem 'bootstrap4-kaminari-views'
gem 'kaminari'
gem 'kaminari-i18n'

# Breadcrumbs
gem 'gretel'

# image uploader
gem 'mini_magick'
gem "image_processing", "~> 1.0"

# gem for search
gem 'ransack'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # rspecにてあらかじめ作っておきたいデータを格納
  gem 'factory_bot_rails'
  # ダミーデータをデータベースに作成する。
  gem 'faker'
  gem 'pry-rails'
  gem 'rspec_junit_formatter'
  # rspecを利用する際に必要
  gem 'rspec-rails'
  # エラーが見やすくなる
  gem 'selenium-webdriver'
  # コードを自動で修正するツール。
  gem 'rubocop'
  gem 'rubocop-checkstyle_formatter'
  gem 'rubocop-rails'
  # 開発環境で、メールのやりとりを可能とするgem
  gem 'letter_opener_web'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

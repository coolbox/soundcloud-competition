source 'https://rubygems.org'
ruby '1.9.3' if respond_to?(:ruby)

gem 'rails', '~> 3.1.11'
gem 'unicorn'
gem 'pg'

group :assets do
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
  gem 'compass'
  gem 'asset_sync'
end

gem 'sass-rails', " ~> 3.1.6"
gem 'jquery-rails'
gem 'haml'
gem 'omniauth', :git => "git://github.com/intridea/omniauth.git", :branch => '0-3-stable'
gem 'thumbs_up', :git => "git://github.com/leemartin/thumbs_up.git"
gem 'redcarpet', '~> 1.17.2'
gem 'rails_config'
gem 'kaminari'
gem 'soundcloud', "~> 0.2.9"

group :test do
  gem 'turn', :require => false
end

group :development do
  gem 'sqlite3'
end

group :production do
  gem 'pg'
  gem 'dalli'
end

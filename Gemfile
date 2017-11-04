source 'https://rubygems.org'

ruby '2.3.1', :engine => 'jruby', :engine_version => '9.1.6.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# Use jdbcsqlite3 as the database for Active Record
#gem 'activerecord-jdbcsqlite3-adapter'
gem 'activerecord-jdbcpostgresql-adapter'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass', '~> 3.3.6'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyrhino'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'figaro', '~>1.1.1'

gem 'wrest'

gem 'http_accept_language'
gem 'sidekiq', '~> 5.0', '>= 5.0.5'

group 'development','test' do
  # gem "sidekiq"
  gem 'sidekiq', '~> 5.0', '>= 5.0.5'
  gem 'rspec-rails','~> 3.6'
  gem 'factory_girl_rails', "~> 4.0"
  gem 'rspec-http'
  gem 'rspec_api_documentation'
  gem 'shoulda-matchers'
  gem 'pry'
  gem 'database_cleaner'
  gem 'timecop'
end

group :test do
  gem 'fakeredis'
  gem 'simplecov', :require => false
  gem 'webmock'
  gem 'rspec-sidekiq'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

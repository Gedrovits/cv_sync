source 'https://rubygems.org'
ruby '2.7.5'

gem 'bundler', '>= 1.8.4'

gem 'mime-types', '>= 2.6.2', require: 'mime/types/columnar' # Free 20% RAM
# gem 'mime-types', '~> 3.0', require: 'mime/types/columnar' FIXME: Can't be used because mail uses < 3

gem 'nokogiri', '~> 1.6' # CVE Security fixes

gem 'rails', '4.2.6'
gem 'pg'

# gem 'rails-i18n'

gem 'sass-rails'
# gem 'coffee-rails'
gem 'jquery-rails'
gem 'sprockets-es6'
# gem 'turbolinks' # Try to have speed improvement

# gem 'hiredis'
# gem 'sidekiq', '~> 4.0'

# gem 'message_bus' # https://github.com/SamSaffron/message_bus

# Performance stuff
gem 'fast_blank'
# gem 'fast_xor' # Deprecated
# gem 'xorcist' # https://github.com/fny/xorcist
# gem 'fast_xs'
# gem 'escape_utils' # https://github.com/brianmario/escape_utils

gem 'jbuilder'
gem 'oj'

gem 'haml-rails'
gem 'font-awesome-rails'
# gem 'bootstrap', git: 'https://github.com/twbs/bootstrap-rubygem' # '~> 4.0.0.alpha1'
gem 'simple_form'

gem 'uglifier'
gem 'autoprefixer-rails'

# Authentication
gem 'devise'
# gem 'devise_uid'
# gem 'devise_invitable'
gem 'devise-i18n'

# Authorization
# gem 'cancancan'

# gem 'friendly_id'

group :development do
  # gem 'web-console'
  # gem 'listen', '~> 3.0.4' # http://weblog.rubyonrails.org/2015/11/11/snappier-development-mode-in-rails-5/
  gem 'thin'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'awesome_print', require: 'ap' # Usage: ap User.last
  # gem 'derailed_benchmarks', require: false # Memory usage
  gem 'rack-mini-profiler' # Speed analysis tool
  # gem 'flamegraph' # Flamegraph for RackMiniProfiler add the ?pp=flamegraph
  # gem 'brakeman', require: false
  # gem 'rubocop', require: false
  gem 'quiet_assets'
  gem 'memory_profiler'
  gem 'brakeman', require: false

  # Deploy
  # gem 'mina' # http://mina-deploy.github.io/mina/
  # gem 'mina-unicorn', require: false
  # gem 'mina-nginx', require: false
  # gem 'mina-stack', github: 'div/mina-stack'
  # gem 'mina-sidekiq', require: false
end

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'capybara'
  # gem 'timecop'
  # gem 'capybara-webkit'
  # gem 'debugger'
end

# group :test do
#   gem 'simplecov', require: false
#   gem 'simplecov-csv', require: false
# end

group :production do
  # gem 'newrelic_rpm'
  gem 'rails_12factor' # For Heroku
  gem 'unicorn', '~> 5.0'
  # gem 'passenger'
end

source 'https://rubygems.org'

ruby '2.2.0'

gem 'rails', '4.2.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'bcrypt', '~> 3.1.7'
gem 'faker', '~> 1.4.3'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :doc do
  gem 'sdoc', '~> 0.4.0'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.1.0'
  gem 'sqlite3'
end

group :test do
  gem 'selenium-webdriver', '~> 2.44.0'
  gem 'capybara', '2.4.4'
  gem 'factory_girl_rails', '4.5.0'
  gem 'cucumber-rails', '1.4.2', :require => false
  gem 'database_cleaner', github: 'bmabey/database_cleaner'
end

group :production do
  gem 'pg',             '0.17.1'
  gem 'rails_12factor', '0.0.2'
end


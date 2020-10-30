# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'jbuilder'
gem 'pg'
gem 'puma'
gem 'rails', '6.0.3.4'
gem 'sass-rails'
gem 'webpacker'

group :development, :test do
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'rubocop-rails'
  gem 'webdrivers'
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'factory_bot_rails'
  gem 'selenium-webdriver'
end

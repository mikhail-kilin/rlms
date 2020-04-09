source "https://rubygems.org"

ruby "2.6.5"

# Most important gems
gem "rails"
gem "pg"
gem "puma"
gem "webpacker", "~> 4.0"
gem "slug"

# Views
gem "active_link_to"
gem "sass-rails", ">= 6"
gem "simple_form"
gem "slim-rails"

# All other gems
gem "devise"
gem "bootsnap", ">= 1.4.2", require: false
gem "cancancan"
gem "draper"
gem "pundit"
gem "activeadmin"

group :development, :test do
  gem "byebug"
  gem "capybara"
  gem "rspec-rails"
  gem "rubocop", require: false
#  gem 'rubocop-rspec', require: false
  gem "factory_bot_rails"
  gem "faker"
end

group :test do
  gem "simplecov", require: false
  gem "shoulda-matchers"
end

group :development do
  gem "dotenv-rails"
  gem "web-console", ">= 3.3.0"
end

source 'http://rubygems.org'

gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'devise'
gem 'sqlite3-ruby', :require => 'sqlite3'
gem 'gravatar_image_tag', '1.0.0'

group :development do
  gem 'rspec-rails'
  gem 'annotate'
end

group :test do
  gem 'rspec'
  gem 'webrat'
  gem 'spork'
  gem 'autotest'
  gem 'autotest-rails-pure'
  gem 'redgreen'
  if RUBY_PLATFORM.downcase.include?("darwin") # I'm on Mac
    gem 'autotest-fsevent'
    gem 'autotest-growl'
  end
  gem 'factory_girl_rails', '1.0'
end


gem 'json'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.4'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'


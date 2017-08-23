source 'http://rubygems.org'
ruby "2.2.6"
gem 'rails'

# Bundle edge Rails instead:
#gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'pg', '0.18.3'
gem 'will_paginate'
gem 'thin', "1.3.1" ,:group => :production
gem 'sqlite3', :group => :development  
#gem 'execjs'
gem 'coffee-script-source', '1.8.0'
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'compass-rails'
  gem 'coffee-rails'
  gem 'uglifier', "1.0.3"
  gem 'bootstrap-sass'
  gem 'jquery-ui-rails'
end

gem "twitter-bootstrap-rails"

platforms :ruby do # linux

  gem 'unicorn'
gem "iconv",:group => :production
end

platforms :mswin do

  # gems specific to windows

end

gem 'jquery-rails'
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
gem 'syck'
gem 'simple_form'
gem 'devise'
gem 'bootstrap-will_paginate'
gem 'carrierwave'
gem "cancan"
gem 'geocoder'
#gem "ransack"#, :git => "git://github.com/ernie/ransack.git" # Track git repo
gem 'ransack', '1.7.0'
gem "watu_table_builder", :require => "table_builder"

                              #:git => 'git://github.com/Nerian/bootstrap-wysihtml5-rails.git' 
#gem 'bootstrap-wysihtml5-rails'
gem 'omniauth'
#gem 'twitter'
#gem 'omniauth-twitter', :git => 'https://github.com/arunagw/omniauth-twitter.git'
#gem 'omniauth-facebook'
#gem 'omniauth-yahoo'    
#gem 'omniauth-openid' #Google
#gem 'omniauth-google-apps'
gem 'fb_graph'       
gem "letter_opener", :group => :development    
gem 'gchartrb'
gem "squeel"#, :git => "git://github.com/ernie/squeel.git" # Track git repo
gem 'has_permalink'
gem "exception_notification"
#gem 'exception_notification'#, :require => 'exception_notifier', :git => "https://github.com/smartinez87/exception_notification.git"
gem 'paper_trail'

gem 'rails_admin'#, :git=>"git://github.com/sferik/rails_admin.git",:branch => "rails-3.x"
gem "pdfkit"
gem "wkhtmltopdf-heroku"#, :git => 'git://github.com/camdez/wkhtmltopdf-heroku.git'

gem 'honeybadger', '2.6.0'
gem 'intercom-rails'
gem "default_value_for"
gem 'newrelic_rpm', '3.13.0.299'
#gem 'rack-webconsole'

gem 'seed_dump'
gem 'public_activity'
gem 'nokogiri', '~> 1.6.0'
gem 'memory_profiler'
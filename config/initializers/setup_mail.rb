ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV['SENDGRID_USERNAME'],
  :password       => ENV['SENDGRID_PASSWORD'],
  :domain         => 'heroku.com'
}
ActionMailer::Base.delivery_method ||= :smtp
#ActionMailer::Base.smtp_settings = {
#  :address              => "mail.israelvaldez.com",
#  :port                 => 25,
#  :domain               => 'israelvaldez.com',
#  :user_name            => 'israelva',
#  :password             => 'Epicor123',
#  :authentication       => 'plain',
#  :enable_starttls_auto => false  }

  
ActionMailer::Base.default_url_options[:host] = "isefcrm.herokuapp.com"
#ActionMailer::Base.default_url_options[:host] = "localhost:3006"
#ActionMailer::Base..register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?

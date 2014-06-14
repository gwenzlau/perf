 require 'tls_smtp'

ActionMailer::Base.smtp_settings =  {
    :address            => 'smtp.gmail.com',
    :port               => 587,
    :domain             => 'nosyparker.herokuapp.com',
    :user_name          => "grantwenzlau",
    :password           => "gkw7930864",
    authentication:       'plain',
    enable_starttls_auto: true  }
  
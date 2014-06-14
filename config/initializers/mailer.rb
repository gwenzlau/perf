 require 'tls_smtp'

ActionMailer::Base.smtp_settings =  {
    :address            => ENV["smtpaddress"],
    :port               => 587,
    :domain             => 'nosyparker.herokuapp.com',
    :user_name          => ENV["emailname"],
    :password           => ENV["emailpass"],
    authentication:       'plain',
    enable_starttls_auto: true  }
  
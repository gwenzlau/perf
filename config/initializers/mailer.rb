 require 'tls_smtp'

ActionMailer::Base.smtp_settings =  {
    :address            => 'vdfv-txl7.accessdomain.com',
    :port               => 587,
    :domain             => 'nosyparker.herokuapp.com',
    :user_name          => "grant@theacmeagency.com",
    :password           => "Fantastic0!",
    authentication:       'plain',
    enable_starttls_auto: true  }
  
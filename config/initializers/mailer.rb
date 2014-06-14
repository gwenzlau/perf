ActionMailer::Base.smtp_settings =  {
    :enable_starttls_auto => true,
    :address            => 'smtp.gmail.com',
    :port               => 587,
    :domain             => 'nosyparker.herokuapp.com',
    :authentication     => :login,
    :enable_starttls_auto => false,
    :tls                  => false,
    :openssl_verify_mode  => 'none',
    :ssl => false,
    :user_name          => "grantwenzlau",
    :password           => "gkw7930864"
  }
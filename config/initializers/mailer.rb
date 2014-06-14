 require 'tls_smtp'

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

  ActionMailer::Base.default_url_options[:host] = "nosyparker.herokuapp.com"
Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
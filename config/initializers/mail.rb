ActionMailer::Base.smtp_settings = {
  port:              587,
  address:           'smtp.mailgun.org',
  user_name:         ENV['MAILGUN_SMTP_LOGIN'],
  password:          ENV['MAILGUN_SMTP_PASSWORD'],
  domain:            'https://api.mailgun.net/v2/app791986fb9f3c4e50aa4978d395fc2ba9.mailgun.org',
  authentication:    :plain,
  content_type:      'text/html',
}
ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.raise_delivery_errors = true
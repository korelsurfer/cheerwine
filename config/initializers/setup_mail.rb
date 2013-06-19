ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "drinkcheerwine1917@gmail.com",
  :password             => "Ritchie1917",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

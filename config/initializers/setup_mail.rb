ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "drinkcheerwine1917@gmail.com",
  :password             => "Cheerwine2013",
  :authentication       => "plain",
  :enable_starttls_auto => true
}

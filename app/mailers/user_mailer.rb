class UserMailer < ActionMailer::Base
  default from: "drinkcheerwine1917@gmail.com"
  def pledge_mail(name, email, hourspledged, charitytopledge)
    @email = email
    @name = name
    @hourspledged = hourspledged
    @charitytopledge = charitytopledge
    mail(:to => "drinkcheerwine1917@gmail.com", :subject => "Pledged!")    
  end

  def redeem_mail(name, email, city, state, code)
    @email = email
    @name = name
    @city = city
    @state = state
    @code = code
    mail(:to => "drinkcheerwine1917@gmail.com", :subject => "Redeem!")    
  end
end

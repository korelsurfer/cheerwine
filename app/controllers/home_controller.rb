class HomeController < ApplicationController

  def index
    
  end
   
  def pledge
          
    @name = params[:pledgename]
    @email = params[:pledgeemail]
    @hourspledged = params[:hourspledged]
    @charitytopledge = params[:charitytopledge]
        
    UserMailer.pledge_mail(@name, @email, @hourspledged, @charitytopledge).deliver

    Pledge.create name: @name, email: @email, hourspledge: @hourspledged, charitytopledge: @charitytopledge
        
    redirect_to :action => "index"
  end

  def redeem
          
    @name = params[:redeemname]
    @email = params[:redeememail]
    @city = params[:city]
    @state = params[:state]
    @code = params[:code]  

    UserMailer.redeem_mail(@name, @email, @city, @state, @code).deliver

    Redeem.create name: @name, email: @email, city: @city, state: @state, code: @code
        
    redirect_to :action => "index"
  end
 
end

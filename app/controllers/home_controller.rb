class HomeController < ApplicationController

  def index
    user_agent =  request.env['HTTP_USER_AGENT'].downcase 
    @users_browser ||= begin
      if user_agent.index('msie') && !user_agent.index('opera') && !user_agent.index('webtv')
                    'ie'+user_agent[user_agent.index('msie')+5].chr
        elsif user_agent.index('gecko/')
            'gecko'
        elsif user_agent.index('opera')
            'opera'
        elsif user_agent.index('konqueror')
            'konqueror'
        elsif user_agent.index('ipod')
            'ipod'
        elsif user_agent.index('ipad')
            'ipad'
        elsif user_agent.index('iphone')
            'iphone'
        elsif user_agent.index('chrome/')
            'chrome'
        elsif user_agent.index('applewebkit/')
            'safari'
        elsif user_agent.index('googlebot/')
            'googlebot'
        elsif user_agent.index('msnbot')
            'msnbot'
        elsif user_agent.index('yahoo! slurp')
            'yahoobot'
        #Everything thinks it's mozilla, so this goes last
        elsif user_agent.index('mozilla/')
            'gecko'
        else
            'unknown'
        end
        end

        return @users_browser
    
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

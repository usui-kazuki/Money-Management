class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :check_logined
  private
  def check_logined
 # ƒZƒbƒVƒ‡ƒ“î•ñ:usr(id)‚ª‘¶Ý‚·‚é‚©
    if session[:usr] then
      #‘¶Ý‚·‚éê‡‚Íusersƒe[ƒuƒ‹‚ðŒŸõ‚µAƒ†[ƒU[î•ñ‚ðŽæ“¾
      #begin_rescue‚Å—áŠOˆ—
      begin
        @usr = Loginuser.find(session[:usr])
     rescue ActiveRecord::RecordNotFound
       reset_session
     end
    end

   #ƒ†[ƒU[î•ñ‚ªŽæ“¾‚Å‚«‚È‚©‚Á‚½‚çƒƒOƒCƒ“ƒy[ƒW(login#index)‚Ö
   unless @usr
     flash[:referer] = request.fullpath
     redirect_to controller: :login, action: :index
   end
  end
end

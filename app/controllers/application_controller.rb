class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configre_permitted_parameters, if: :devise_controller?
  before_action :set_admin
  
  def set_admin
    if user_signed_in?
      @nickname = current_user.nickname
    end
  end

  protected
  def configre_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname])
  end
end

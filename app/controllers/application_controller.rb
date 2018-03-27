class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception

  # <Niyati - copied this from devise to allow our database to take the new value user_type. We did this as we added user_type later on and not part of inital devise creation
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_type])
  end
  # <Niyati - end of code copued frojm devise github



end

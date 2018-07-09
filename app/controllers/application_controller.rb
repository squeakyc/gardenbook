class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name, :location, :avatar, :bio])

    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :name, :location, :avatar, :bio])
  end
end

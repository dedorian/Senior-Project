class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :first_name, :last_name, :phone_number, :street, :city, :state, :zip, :password, :password_confirmation, :card_type, :card_number, :card_expires_on, :card_verification)}
  end


end

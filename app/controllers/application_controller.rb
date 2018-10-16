class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :get_all_channels
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :company_id] )
  end

  def get_all_channels
    @channels = Channel.all
  end
end

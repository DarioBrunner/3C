class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :get_all_channels, :get_all_companies, :get_copyright, :get_groups
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :company_id])
    devise_parameter_sanitizer.permit(:account_update, keys:[:avatar, :name])
  end

  def get_all_channels
    @channels = Channel.all
  end

  def get_all_companies
    @companies = Company.all
  end

  def get_copyright
    @copyrigths = Copyrigth.all
  end

  def get_groups
    @groups = Group.all
  end

end

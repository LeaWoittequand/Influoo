class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:description])
    devise_parameter_sanitizer.permit(:account_update, keys: [:avatar])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  Rails.application.config.consider_all_requests_local
  rescue_from Exception, :with => :render_404

private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end


  def render_404
    render :template => 'pages/404', :layout => false, :status => :not_found
  end

end


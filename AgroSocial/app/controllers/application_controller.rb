class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :update_sanitized_params, if: :devise_controller?

	def update_sanitized_params
	  devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:is_association, :email, :password, :password_confirmation)}
	end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

   def current_ability
    @current_ability ||= Ability.new(current_association)
  end

end
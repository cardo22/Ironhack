class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action  :permit_extra_devise_field, if: :devise_controller?

  protected

  	def permit_extra_devise_field
  		puts "-------------SETTING UP DEVISE STRONG PARAMETER-------------------"
  		p devise_parameter_sanitizer.for(:sign_up)
  		devise_parameter_sanitizer.for(:sign_up).push(:name)
  	end
end

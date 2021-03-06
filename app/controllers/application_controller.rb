class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_filter :configure_permitted_parameters, if: :devise_controller?




    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :username, :email, :password, :bio])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :username, :email, :password, :current_password, :bio])
    end
end

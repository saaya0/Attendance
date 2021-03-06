class ApplicationController < ActionController::Base
  before_action :set_header
  before_action :configure_permitted_parameters, if: :devise_controller?


    def after_sign_up_path_for(resource)
        admin_menu_path
    end

    def after_sign_in_path_for(resource)
        admin_menu_path
    end

    def after_log_out_path_for(resource)
        root_path
    end

    private


    def set_header
        @header = true
        @path = [root_path, new_admin_registration_path, new_admin_session_path]
    end

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :last_name_kana, :first_name_kana])
    end
end

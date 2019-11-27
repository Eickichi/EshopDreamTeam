class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_devise_parameters, if: :devise_controller?
  
    def after_sign_in_path_for(resource_or_scope)
        root_path
    end
      
    def after_sign_out_path_for(resource_or_scope)
        new_user_session_path
    end
  
    def authenticate_user
        unless user_signed_in?
            flash[:danger] = "Please log in."
            redirect_to new_user_session_path, flash: {danger: "Vous n'avez pas le droit d'acceder a cette page sans etre connecte"}
        end
    end

    def configure_devise_parameters
        devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:first_name, :last_name, :user_name, :email, :password, :password_confirmation)}
        devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:first_name, :last_name, :user_name, :email, :password, :password_confirmation)}
      end

      before_action :current_cart

    private
      def current_cart

        if session[:cart_id]
          cart = Cart.find_by(:id => session[:cart_id])
          if cart.present?
            @current_cart = cart
          else
            session[:cart_id] = nil
          end

          puts @current_cart
        end
  
        if session[:cart_id] == nil
          @current_cart = Cart.create!
          session[:cart_id] = @current_cart.id
          puts @current_cart
        end
      end
end

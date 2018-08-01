class Users::RegistrationsController < Devise::RegistrationsController

  before_action :configure_permitted_parameters, if: :devise_controller?
  
  def sign_up_params
    if params[:action] == 'create' && params[:controller] == 'novus/users/registrations'
      params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :contact_number, :links, :picture, :confirmed, :interest, :degree, :field)
    end
  end
  
  def account_update_params
      params.require(:user).permit(:password, :password_confirmation, :first_name, :last_name, :contact_number, :links, :picture, :interest, :degree, :field)
  end

  def after_sign_up_path_for(user)
    '/user_infos/sign_up' 
  end

 protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:email, :password, :password_confirmation, :first_name, :last_name, :contact_number, :links, :picture, :interest, :degree, :field)
    end
  end
  

end

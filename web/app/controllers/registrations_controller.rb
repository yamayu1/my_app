class RegistrationsController < Devise::RegistrationsController
    private
  
    def sign_up_params
      params.require(:user).permit(:user_name, :name_kana, :tel, :email, :password, :password_confirmation)
    end
  
    def account_update_params
      params.require(:user).permit(:user_name, :email, :password, :password_confirmation, :current_password)
    end
  end
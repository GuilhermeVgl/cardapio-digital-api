class RegistrationsController < Devise::RegistrationsController
    private
  
    def sign_up_params
      params.require(:user).permit(:email, :password, :password_confirmation, :username)
    end
  end
  
class RegistrationsController < Devise::RegistrationsController

	 def sign_up_params
    devise_parameter_sanitizer.sanitize(:sign_up)
    params.require(:user).permit(:email, :password, profile_attributes: [:fname, :lname, :avatar, :about])
  end
end

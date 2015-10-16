class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def linkedin
    @user = User.find_for_oauth(env["omniauth.auth"])

    if @user.persisted?
      @user.update_from_omniauth(env["omniauth.auth"])
      flash[:notice] = "Signed in successfully!"
      sign_in_and_redirect @user
    else
      session["devise.linkedin_data"] = env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
end

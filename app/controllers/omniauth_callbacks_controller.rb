class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    user = User.from_omniauth(request.env["omniauth.auth"])
    if user.persisted?
      flash.notice = "Signed in via Facebook!"
      flash[:color] = "valid_right"
      sign_in_and_redirect user
    else
      session["devise.user_attributes"] = user.attributes
      redirect_to new_user_registration_url
    end
  end

  # def facebook
  #   @user = User.find_and_authenticate_by_oauth_facebook(request.env['omniauth.auth'])

  #   if @user.valid?
  #     sign_in @user
  #   else
  #     redirect_to sign_in_path(:invalid_token => 1)
  #     return
  #   end

  #   if user_signed_in?
  #     #flash[:notice] = "Signed in successfully."
  #     # if @user.sign_in_count.eql? 1
  #     #   redirect_to thanks_path
  #     # else
  #       redirect_to root_path
  #     # end
  #   else
  #     redirect_to sign_in_path(invalid_token: 1)
  #   end
  # end

  # def existing
  #   redirect_to user_omniauth_authorize_path(:facebook)
  # end

  # def facebook
  #   # You need to implement the method below in your model (e.g. app/models/user.rb)
  #   @user = User.from_omniauth(request.env["omniauth.auth"], current_user)

  #   if @user.persisted?
  #     sign_in_and_redirect @user
  #     set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
  #   else
  #     session["devise.facebook_data"] = request.env["omniauth.auth"]
  #     redirect_to new_user_registration_url
  #   end
  # end
  #alias_method :twitter, :facebook, :all
  def twitter
    user = User.from_omniauth(request.env["omniauth.auth"])
    if user.persisted?
      flash.notice = "Signed in via Twitter!"
      flash[:color] = "valid_right"
      sign_in_and_redirect user
    else
      session["devise.user_attributes"] = user.attributes
      redirect_to new_user_registration_url
    end
  end

  def github
    user = User.from_omniauth(request.env["omniauth.auth"])
    if user.persisted?
      flash.notice = "Signed in via Github!"
      flash[:color] = "valid_right"
      sign_in_and_redirect user
    else
      session["devise.user_attributes"] = user.attributes
      redirect_to new_user_registration_url
    end
  end
end

class SessionController < ApplicationController

  def create
    user = User.find_by(email: user_params[:email])

    if user && user.authenticate(user_params[:password])
      session[:current_user_id] = user.id

      # token = SecureRandom.urlsafe_base64
      #
      # session[:session_token] = token
      # user.update(session_token: token)

      flash[:message] = "Thank you, you are now logged in."
      redirect_to application_angular_path
    else
      flash[:message] = "Email / Password combination does not exist!"
      redirect_to root_path
    end

  end

  def destroy
    session[:current_user_id] = nil
    redirect_to root_path
  end

  def current_diner
  end

  private

  def user_params
    return params.require(:user).permit(:email, :password)
  end

end

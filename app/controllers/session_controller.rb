class SessionController < ApplicationController

  def create
    user = User.find_by(email: user_params[:email])

    if user && user.authenticate(user_params[:password])
      session[:current_user_id] = user.id
      flash[:message] = "Thank you, you are now logged in."
    else
      flash[:message] = "Email / Password combination does not exist!"
    end

    redirect_to root_path

  end

  def destroy
    session[:current_user_id] = nil
    redirect_to root_path
  end


  private

  def user_params
    return params.require(:user).permit(:email, :password)
  end

end
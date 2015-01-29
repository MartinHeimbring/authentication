class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_back_to_or user
    else
      flash.now[:alert] = 'Invalid email/password combination'
      # rendering a template doesn't count as a request that's why we need to call .now on flash so that the flash message doesn't persist
      render 'new'
    end
  end

  def destroy
    sign_out if logged_in?
    redirect_to root_url
  end
end

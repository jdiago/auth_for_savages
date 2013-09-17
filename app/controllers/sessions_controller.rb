class SessionsController < ApplicationController
  skip_before_action :authorize

  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user and user.authenticate params[:password]
      reset_session
      session[:user_id] = user.id
      redirect_to savages_url
    else
      redirect_to login_url, alert: 'Invalid name or password'
    end
  end

  def destroy
    reset_session
    redirect_to login_url, notice: 'Logged out'
  end
end

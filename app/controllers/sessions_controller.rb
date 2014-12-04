class SessionsController < ApplicationController

  def create
    auth_hash = request.env['omniauth.auth']
    # raise
    # create user - but i have this in user model. call it here
    session[:user_id] = User.find_or_create_from_omniauth(auth_hash).uid
    redirect_to root_path
    # current_user

  end

end

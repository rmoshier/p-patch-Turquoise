class UsersController < ApplicationController

  def index
    @user = User.find_by(uid: session[:user_id]).update({email: params[:email]})
    # bring up session and edit the entry to add email to the DB
    # if @user.save
    redirect_to root_path
    # end
  end

  def new
  end

  def edit
  end

  def update
  end

  def create
  end

end

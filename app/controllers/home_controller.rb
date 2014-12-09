require './lib/weather'

class HomeController < ApplicationController

  def index
    current_user
    @userstools = Userstool.where(user_id: current_user)
    # raise params.inspect
    @tools = Tool.all
    @user = User.find_by(uid: session[:user_id])
    @posts = Post.all
  end

end

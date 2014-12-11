require './lib/weather'

class HomeController < ApplicationController

  def index
    current_user
    weather
    @userstools = Userstool.where(user_id: current_user)
    @tools = Tool.all
    @user = User.find_by(uid: session[:user_id])
    @posts = Post.order(created_at: :desc)
    @people = User.all
  end

  def weather
    @current = Weather.new("seattle").current_weather
    @forecast = Weather.new("seattle").forecast
  end

end

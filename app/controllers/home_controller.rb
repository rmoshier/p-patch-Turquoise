require './lib/weather'

class HomeController < ApplicationController

  def index
    current_user
    @userstools = Userstool.where(user_id: current_user)
    # raise params.inspect
  end

end

class HomeController < ApplicationController

  def index
    current_user
    @userstools = Userstool.where(user_id: current_user).as_json
    # raise params.inspect
  end

end

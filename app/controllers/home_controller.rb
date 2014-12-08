require './lib/weather'

class HomeController < ApplicationController

  def index
    current_user
  end

end

require './lib/weather'

class HomeController < ApplicationController

  def index
    current_user
    weather
  end

  def weather
    @current = Weather.new("seattle").current_weather
    @forecast = Weather.new("seattle").forecast
    # raise params.inspect
  end

end

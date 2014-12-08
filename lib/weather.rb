class Weather
require 'httparty'
  attr_accessor :city

  def initialize(city)
    @city = city
  end

  def current_weather
    HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=#{@city}").parsed_response
  end

  def forecast
    HTTParty.get("http://api.openweathermap.org/data/2.5/forecast?q=#{@city}").parsed_response
  end
end

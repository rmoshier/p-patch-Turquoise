# require 'httparty' # If using Rails with a Gemfile, this require is not needed

class Weather

  def self.current_weather(lat, long)
    request_weather("weather", lat, long)
  end

  def self.forecast(lat, long)
    request_weather("forecast", lat, long)
  end

  def self.request_weather(path, lat, long)
    response = HTTParty.get("http://api.openweathermap.org/data/2.5/#{path}?lat=#{lat}&lon=#{long}")
    response.parsed_response
  end

end

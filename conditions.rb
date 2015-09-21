require 'httparty'
require 'byebug'
class Conditions
attr_accessor :location, :temperature, :observation
  def initialize(zip)
    @zip = zip
    @response = get_response
  end

  # private def get_response
  #   file = File.read('conditions.json')
  #   data_hash = JSON.parse(file)
  # end

  def location
    @response["current_observation"]["display_location"]["full"]
  end

  def temperature
    @response["current_observation"]["temperature_string"]
  end

  def forecast
    @response["current_observation"]["weather"]
  end

  def wind_dir
    @response["current_observation"]["wind_dir"]
  end

  def wind_speed
    @response["current_observation"]["wind_mph"]
  end


  private def get_response
      key = ENV['WUNDERGROUND_KEY']
      HTTParty.get("http://api.wunderground.com/api/#{key}/conditions/q/#{@zip}.json")
  end


end

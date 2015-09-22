

require 'httparty'
require 'byebug'

class Hurricane
  def initialize
    @response = get_response
  end

  def name
    @response["currenthurricane"]["stormInfo"]["stormName_Nice"]
  end

  private def get_response
      key = ENV['WUNDERGROUND_KEY']
      HTTParty.get("http://api.wunderground.com/api/#{key}/currenthurricane/view.json")
  end


end

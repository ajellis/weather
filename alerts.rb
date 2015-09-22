require 'httparty'
require 'byebug'
class Alerts
  def initialize(zip)
    @zip = zip
    @response = get_response
  end

  def alerts
    @response["alerts"]
  end


  private def get_response
      key = ENV['WUNDERGROUND_KEY']
      HTTParty.get("http://api.wunderground.com/api/#{key}/alerts/q/#{@zip}.json")
  end


end

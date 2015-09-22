require 'httparty'
require 'byebug'
class Alerts
  def initialize(zip)
    @zip = zip
    @response = get_response
  end

  def alerts
    if @response["alerts"] == []
      "There are no weather alerts in your area."
    else
      all_alerts = ""
      @response["alerts"].each do |a|
        all_alerts << a["type"] + "\n"
      end
      all_alerts
    end
  end


  private def get_response
      key = ENV['WUNDERGROUND_KEY']
      HTTParty.get("http://api.wunderground.com/api/#{key}/alerts/q/#{@zip}.json")
  end


end

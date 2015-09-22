
require 'httparty'
require 'byebug'

class DaysForecast
  def initialize(zip)
    @zip = zip
    @response = get_response
  end

  def one_day_forecast(zip)
      d = ""
      d << @response["forecast"]["txt_forecast"]["forecastday"][zip]["title"]
      d << "\n"
      d << @response["forecast"]["txt_forecast"]["forecastday"][zip]["fcttext"]
  ​
      d
    end
  ​
    def ten_day
      t = ""
      (0..18).step(2) do |s|
      t << one_day_forecast(s)
      t << "\n"
      end
      t
    end

  private def get_response
      key = ENV['WUNDERGROUND_KEY']
      HTTParty.get("http://api.wunderground.com/api/#{key}/astronomy/q/#{@zip}.json")
  end


end

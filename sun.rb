require 'httparty'
require 'byebug'
class Sun
  def initialize(zip)
    @zip = zip
    @response = get_response
  end

  def sunrise_hour
    @response["sun_phase"]["sunrise"]["hour"]
  end

  def sunrise_minute
    @response["sun_phase"]["sunrise"]["minute"]
  end

  def sunset_hour
    @response["sun_phase"]["sunset"]["hour"]
  end

  def sunset_minute
    @response["sun_phase"]["sunset"]["minute"]
  end

  private def get_response
      key = ENV['WUNDERGROUND_KEY']
      HTTParty.get("http://api.wunderground.com/api/#{key}/astronomy/q/#{@zip}.json")
  end


end

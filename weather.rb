require 'httparty'
require 'json'
require './conditions.rb'
# require './days_forecast.rb'
require './sun.rb'



puts "==============================="
puts "Did you bring an umbrella? Are you wearing short-sleeved shirts? No? Well, let's find out HOW MUCH of and idiot you are!"
puts "Enter your zip code"
input = gets.chomp
conditions = Conditions.new(input)
puts "==============================="
puts "---: Weather Conditions :---"
puts "your location is #{conditions.location}"
puts "The current temperature is #{conditions.temperature}"
puts "the current forecast is #{conditions.forecast}"
puts "The wind is blowing #{conditions.wind_dir}, at a speed of #{conditions.wind_speed} MPH"
puts "==============================="
# forecast = DaysForecast.new(input)
# puts "---: 10-Day Forecast:---"
# puts "Your ten day forecast is as follows: \n #{ten_days_cast.ten_day}"
# forecast = DaysForecast.new(input)
sun = Sun.new(input)
puts "---: Sunrise/Sunset:---"
puts "Sunrise is at #{sun.sunrise_hour}:#{sun.sunrise_minute}"
puts "Sunset is at #{sun.sunset_hour}:#{sun.sunset_minute}"

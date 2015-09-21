require 'httparty'
require 'json'
require './conditions.rb'



puts "==============================="
puts "Did you bring an umbrella? Are you wearing short-sleeved shirts? No? Well, let's find out HOW MUCH of and idiot you are!"
puts "Enter your zip code"
input = gets.chomp
conditions = Conditions.new(input)
puts "==============================="
puts "---:. Weather Conditions.:---"
puts "your location is #{conditions.location}"
puts "The current temperature is #{conditions.temperature}"
puts "the current forecast is #{conditions.forecast}"
puts "The wind is blowing #{conditions.wind_dir}, at a speed of #{conditions.wind_speed} MPH"
puts "==============================="

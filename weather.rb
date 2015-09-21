require 'httparty'
require 'json'
require './conditions.rb'


puts "Do you like the weather? Well too bad, because rain doesn't consider how you feel when it decides to ruin your life!"
puts "Put in a zip code, so I can show you how weather will ruin you this time!!"
input = Conditions.new(gets.chomp)
puts "==============================="
puts "your location is #{input.location}"
puts "The current temperature is #{input.temperature}"
puts "the current forecast is #{input.forecast}"
puts "==============================="

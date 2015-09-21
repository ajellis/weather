require './conditions'
require 'minitest/autorun'
require 'minitest/pride'


class WeatherTest < Minitest::Test

  def test_conditions_location
    assert_equal "Durham, NC", Conditions.new("27713").location
  end
  def test_conditions_observation
    assert_equal "Overcast", Conditions.new("27713").observation
  end
  def test_temperature
    assert_equal "78.1 F (25.6 C)", Conditions.new("27713").temperature
  end

end

require 'test_helper'

class ConsumedCalTest < ActiveSupport::TestCase
  test "can return calories burned today" do
    assert_equal 1000, ConsumedCal.daily_calories_consumed
  end
end

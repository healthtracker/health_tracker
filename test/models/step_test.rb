require 'test_helper'

class StepTest < ActiveSupport::TestCase
  test "can return calories burned today" do
    assert_equal 175, Step.calculate_calories
    assert_difference "Step.calculate_calories", 2250 do
      Step.create(steps: 45000, stepped_on: Time.now)
    end
  end
end

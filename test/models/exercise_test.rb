require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase
  test "can return calories burned today" do
    assert_equal 700, Exercise.daily_calories_burned
  end
  test "can return excercise type" do
    assert_equal "BALLIN", exercises(:one).get_type 
  end
end

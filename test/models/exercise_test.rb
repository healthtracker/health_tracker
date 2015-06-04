require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase
  test "can return calories burned today" do
    assert_equal 700, Exercise.daily_calories_burned
  end
end

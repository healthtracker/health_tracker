require 'test_helper'

class ExerciseTest < ActiveSupport::TestCase
  test "can return calories burned today" do
    assert_equal 700, Exercise.daily_calories_burned
  end
  test "can return excercise type" do
    assert_equal "BALLIN", exercises(:one).get_type
  end

  test "can return most common type" do
    Exercise.create(exercise_type: exercise_types(:one))
    Exercise.create(exercise_type: exercise_types(:one))
    Exercise.create(exercise_type: exercise_types(:one))
    assert_equal "BALLIN", Exercise.most_common_name
  end

  test "can return amount of calories burned by most common type" do
    assert_equal 800, Exercise.most_burned
  end
end

class Exercise < ActiveRecord::Base
  belongs_to :exercise_type

  def self.daily_calories_burned
    today = self.all.select {|e| e.date.strftime("%y%m%d") == Time.now.strftime("%y%m%d")}
    today.reduce(0) { |sum, e| sum + e.calories_burned }
  end

  def get_type
    type = ExerciseType.find_by_id(self.exercise_type_id)
    type.name
  end
end

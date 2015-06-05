class Exercise < ActiveRecord::Base
  belongs_to :exercise_type

  def self.daily_calories_burned
    today = self.all.select {|e| e.date == Date.today}
    today.reduce(0) { |sum, e| sum + e.calories_burned }
  end

  def get_type
    type = ExerciseType.find_by_id(self.exercise_type_id)
    type.name
  end

  def self.most_common
    id_and_count=Exercise.group(:exercise_type_id).order('count_id DESC').count(:id)
    most_common_id = id_and_count.first[0]
    ExerciseType.find_by_id(most_common_id)
  end

  def self.most_common_name
    most_common.name
  end

  def self.most_burned
    all_most_common = Exercise.all.select {|e| e.exercise_type_id == most_common.id}
    all_most_common.reduce(0) {|sum, e| sum += e.calories_burned}
  end
end

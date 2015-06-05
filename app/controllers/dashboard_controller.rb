class DashboardController < ApplicationController
  def index
    @most_common = Exercise.most_common
    @most_burned = Exercise.most_burned
    @miles_walked = Step.calculate_calories/105.6
    @calories_burned_today = Exercise.daily_calories_burned
    @steps_today = Step.calculate_calories
    @consumed_today = ConsumedCal.daily_calories_consumed
    @calories = (@consumed_today - @steps_today - @calories_burned_today)
    @weight_today = Weight.weight_today
  end
end

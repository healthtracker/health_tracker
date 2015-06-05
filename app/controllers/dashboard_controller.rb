class DashboardController < ApplicationController
  def index
    @calories = (ConsumedCal.daily_calories_consumed - Step.calculate_calories - Exercise.daily_calories_burned)
    @most_common = Exercise.most_common
    @most_burned = Exercise.most_burned
  end
end

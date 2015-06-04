class DashboardController < ApplicationController
  def index
    @calories = (ConsumedCal.daily_calories_consumed - Step.calculate_calories - Exercise.daily_calories_burned)
  end
end

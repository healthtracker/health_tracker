class ConsumedCal < ActiveRecord::Base

  def self.daily_calories_consumed
    today = self.all.select {|c| c.calories_on == Date.today}
    today.reduce(0) { |sum, c| sum + c.calories }
  end

end

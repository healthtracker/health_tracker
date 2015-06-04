class ConsumedCal < ActiveRecord::Base

  def self.daily_calories_consumed
    today = self.all.select {|c| c.calories_on.strftime("%y%m%d") == Time.now.strftime("%y%m%d")}
    today.reduce(0) { |sum, c| sum + c.calories }
  end

end

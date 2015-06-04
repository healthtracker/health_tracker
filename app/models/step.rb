class Step < ActiveRecord::Base

  def self.calculate_calories
    steps_today = self.all.select {|s| s.stepped_on.strftime("%y%m%d") == Time.now.strftime("%y%m%d")}
    steps_today.reduce(0) { |sum, s| sum + s.steps}/20
  end

end

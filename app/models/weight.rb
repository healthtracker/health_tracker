class Weight < ActiveRecord::Base
  validates :weighed_on, uniqueness: true

  def self.weight_today
    weight = Weight.where(weighed_on: Date.today)
    weight[0].weight
  end
end

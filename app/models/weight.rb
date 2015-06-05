class Weight < ActiveRecord::Base
  validates :weighed_on, uniqueness: true
end

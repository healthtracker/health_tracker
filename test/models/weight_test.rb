require 'test_helper'

class WeightTest < ActiveSupport::TestCase
  test "can return weight today" do
    assert Weight.weight_today
  end
end

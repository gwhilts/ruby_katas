require 'test_helper'
require 'amicable_numbers'

class AmicableNumbersTest < Minitest::Test
  describe "AmicableNumbers.pairs_to(limit)" do
    it "returns a collection of amicable number pairs below the given limit" do
      ( AmicableNumbers.pairs_to 300  ).must_equal [[220, 284]]
      ( AmicableNumbers.pairs_to 2000 ).must_equal [[220, 284], [1184, 1210]]
    end
  end


  describe "AmicableNumbers.sum_to(limit)" do
    it "returns the sum of all the amicable numbers below the limit" do
      ( AmicableNumbers.sum_to 300  ).must_equal 504
      ( AmicableNumbers.sum_to 2000 ).must_equal 2898
    end
  end
end

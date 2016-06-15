require 'test_helper'
require 'collatz'

class CollatzTest < Minitest::Test
  describe "Collatz.sequence_from(start)" do
    it "returns the Collatz from the given number down to 1" do
      ( Collatz.sequence_from 13 ).must_equal [13, 40, 20, 10, 5, 16, 8, 4, 2, 1]
      ( Collatz.sequence_from 52 ).must_equal [52, 26, 13, 40, 20, 10, 5, 16, 8, 4, 2, 1]
    end
  end

  describe "Collatz.longest_under(limit)" do
    it "returns the starting number and length of the longest sequence begining with a number < or = to the given limit" do
      expected = Collatz.longest_under 100
      
      (expected[:start]  ).must_equal  97
      (expected[:length] ).must_equal 119
    end
  end
end

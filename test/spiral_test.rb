require 'test_helper'
require 'spiral'

describe Spiral do
  let(:spiral) { Spiral.new 5 }

  describe "#new(size)" do
    it "builds a table of spiraling numbers with width and height equal to the given size" do
      spiral.table.must_equal [[21, 22, 23, 24, 25],
                               [20, 07,  8,  9, 10],
                               [19, 06, 01, 02, 11],
                               [18, 05, 04, 03, 12],
                               [17, 16, 15, 14, 13]]
    end
  end

  describe "#sum_of_diagonals" do
    it "correctly calculates the sum of the diagnals in a table of spiraling numbers" do
      spiral.sum_of_diagonals.must_equal 101
      Spiral.new(1001).sum_of_diagonals.must_equal 669_171_001
    end
  end
end

require 'test_helper'
require 'grid'

describe Grid do
  describe ".largest_product" do
    it "calculates the largest product of 4 adjacent (horizontal, vertical, diagonal) number in given grid" do
      Grid.largest_product.must_equal 70_600_674
    end
  end
end

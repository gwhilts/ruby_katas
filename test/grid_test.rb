require 'test_helper'
require 'grid'
require 'grid_data'

describe Grid do
  describe ".largest_product" do
    it "calculates the largest product of 4 adjacent (horizontal, vertical, diagonal) number in given grid" do
      Grid.largest_product(GridData::Euler).must_equal 70_600_674
    end
  end
end

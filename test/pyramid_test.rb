require 'test_helper'
require 'pyramid'

describe Pyramid do
  describe ".maximum_path_sum(p)" do
    it "returns the highest sum possible following a path from top to bottom in the given pyramid" do
      ( Pyramid.maximum_path_sum Pyramid::P1 ).must_equal 23
      ( Pyramid.maximum_path_sum Pyramid::P2 ).must_equal 1074
    end
  end
end

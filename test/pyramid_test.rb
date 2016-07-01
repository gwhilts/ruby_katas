require 'test_helper'
require 'pyramid'
require 'pyramid_sets'
require 'benchmark'

describe Pyramid do
  describe ".maximum_path_sum(p)" do
    it "returns the highest sum possible following a path from top to bottom" do
      ( Pyramid.maximum_path_sum PyramidSets::P1 ).must_equal 23
      ( Pyramid.maximum_path_sum PyramidSets::P2 ).must_equal 1074
    end

    it "works quickly on very big sets" do
     time = Benchmark.realtime { Pyramid.maximum_path_sum PyramidSets::P3 }
     (time * 10).to_i.must_equal 0
    end
  end
end

require 'test_helper'
require 'triangles'
require 'benchmark'

class TrianglesTest < Minitest::Test
  describe 'Triangles.first_with_factor_count' do
    it 'returns the lowest triangle number containing at least given number of factors' do
      ( Triangles.first_with_factor_count  3 ).must_equal 6
      ( Triangles.first_with_factor_count  5 ).must_equal 28
      ( Triangles.first_with_factor_count 10 ).must_equal 120
    end

   it 'works quickly with really big numbers' do
     # Find the 1st triangle with 500 factors in < 3 seconds?
     ( Benchmark.realtime { Triangles.first_with_factor_count 500 } ).to_i.must_be_close_to 1, 1
   end

  end
end

require 'test_helper'
require 'triangles'

class TrianglesTest < Minitest::Test
  describe 'Triangles.first_with_factor_count' do
    it 'returns the lowest triangle number containing at least given number of factors' do
      ( Triangles.first_with_factor_count  3 ).must_equal 6
      ( Triangles.first_with_factor_count  5 ).must_equal 28
      ( Triangles.first_with_factor_count 10 ).must_equal 120
    end
  end
end

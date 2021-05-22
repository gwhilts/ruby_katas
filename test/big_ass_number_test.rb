require 'test_helper'
require 'big_ass_number'

class BigAssNumberTest < Minitest::Test
  describe 'BigAssNumber.largest_product_of' do
    it 'the largest product of adjacent of the given length' do
      _( BigAssNumber.largest_product_of  2 ).must_equal 81
      _( BigAssNumber.largest_product_of  4 ).must_equal 5832
      _( BigAssNumber.largest_product_of 13 ).must_equal 23_514_624_000
    end
  end
end

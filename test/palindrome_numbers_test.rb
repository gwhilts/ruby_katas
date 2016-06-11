require "test_helper"
require "palindrome_numbers"

class PalindromeNumbersTest < MiniTest::Test
  describe 'PalindromeNumber.find_largest_product_of' do
    it 'returns the largest palindrome product of numbers up to the given limit' do
      ( PalindromeNumbers.find_largest_product 99  ).must_equal 9009
      ( PalindromeNumbers.find_largest_product 999 ).must_equal 906609
    end
  end
end

class PalindromeNumbers
  def self.find_largest_product(high, low = 1)
    palindromes = []
    while high > low
      high.downto low do |n|
        product = high * n
        if (product.to_s == product.to_s.reverse)
          palindromes << product
        end
      end
      high = high - 1
    end
    palindromes.max
  end
end

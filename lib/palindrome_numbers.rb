class PalindromeNumbers
  def self.find_largest_product(limit)
    @@palindromes = []
    search_for_palindromes(limit, 0)
    @@palindromes.sort.last
  end

  private
  def self.search_for_palindromes(high, low)
    high.step low, -1 do |n|
      product = high * n
      if (product.to_s == product.to_s.reverse)
        @@palindromes << product
        search_for_palindromes high - 1, product
      end
    end
  end
end

class PalindromeNumbers
  def self.find_largest_product(high, low = 1)

# This version is somewhat clearer than that below, but is about 3x slower 

#   pairs       = (low..high).to_a.product (low..high).to_a
#   products    = pairs.map { |p| p[0] * p[1] }
#   palindromes = products.select { |p| p.to_s == p.to_s.reverse }
#   palindromes.max


# This version is much faster (~3x) than the one above, but
# could probably be even faster, if stop the countdown when
# when a palidrome is found, then decrement the high value.

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

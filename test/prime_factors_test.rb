require 'test_helper'
require 'prime_factors'

class PrimeFactor < Minitest::Test
  using PrimeFactors
  describe "Fixnum#largest_prime_factor" do
    it "returns the largest prime factor" do
      (  10.largest_prime_factor ).must_equal 5
      (  28.largest_prime_factor ).must_equal 7
      ( 161.largest_prime_factor ).must_equal 23
    end
  end
end

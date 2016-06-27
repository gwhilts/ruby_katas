require 'test_helper'
require 'circular_primes'

describe CircularPrimes do

  describe ".primes_to(limit)" do
    it "returns all the primes up to the given limit" do
      (CircularPrimes.primes_to 10).must_equal [2, 3, 5, 7]
    end
  end

  describe ".circulars_primes_to(limit)" do
    it "returns the circular primes below the given limit" do
      CircularPrimes.circular_primes_to(100).must_equal [2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, 97]
    end
  end

  describe ".euler" do
    it "correctly determines the number of circular primes below 1_000_000" do
      CircularPrimes.euler.must_equal 55
    end
  end
end

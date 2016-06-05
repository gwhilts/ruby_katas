require "test_helper"
require "fib"

class FibTest < MiniTest::Test
  describe "Fib.fib(n)" do
    it "calculates the Nth number of the Fibonacci sequence" do
      # 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233
      Fib.fib(4).must_equal 3
      Fib.fib(9).must_equal 34
    end
  end

  describe "Fib.sum_of_evens_to(limit)" do
    # _, _, _, 2, _, _, 8, __, __, 34, __, 89, 144, 233
    # limit = 100
    # 2 + 8 + 34 = 44
    # limit = 200
    # 2 + 8 + 34 + 144 = 188
    it "adds even Fibacci numbers" do
      Fib.sum_of_evens_to(8).must_equal 10
      Fib.sum_of_evens_to(100).must_equal 44
      Fib.sum_of_evens_to(200).must_equal 188
    end
  end
end

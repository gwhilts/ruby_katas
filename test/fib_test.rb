require 'test_helper'
require 'fib'
require 'benchmark'

class FibTest < MiniTest::Test
  describe "Fib.fib(n)" do
    it "calculates the Nth number of the Fibonacci sequence" do
      # 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233
      _(Fib.fib 4).must_equal 2
      _(Fib.fib 9).must_equal 21
    end
  end

  describe "Fib.sum_of_evens_to(limit)" do
    # _, _, _, 2, _, _, 8, __, __, 34, __, 89, 144, 233
    # limit = 100
    # 2 + 8 + 34 = 44
    # limit = 200
    # 2 + 8 + 34 + 144 = 188
    it "adds even Fibacci numbers" do
      _(Fib.sum_of_evens_to 8).must_equal 10
      _(Fib.sum_of_evens_to 100).must_equal 44
      _(Fib.sum_of_evens_to 200).must_equal 188
    end
  end

  describe "Fib.index_where_digit_count(count)" do
    it "finds the index of the first fibonacci number with the given number of digits" do
      _(Fib.index_where_digit_count 3).must_equal 12
      _(Fib.index_where_digit_count 100).must_equal 476
    end

    it "works quickly with very large numbers" do
      # Find the first Fib number with 1k digits in < 1 second
      ( Benchmark.realtime { Fib.index_where_digit_count 10000 } ).to_i.must_equal 0
    end
  end
end

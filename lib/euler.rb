class Euler
  class << self
    # Problem Two Even Fibonacci Numbers
    def p2
      require 'fib'
      puts "The sum of all even Fibonacci numbers up to 4,000,000:"
      puts Fib.sum_of_evens_to(4_000_000)
    end

    # Problem 3: Largest Prime Factor
    def p3
      require 'Prime'
      puts "The largest prime factor of 600,851,475,143 is:"
      puts 600851475143.prime_division.last[0]
    end

    # Problem 4: Largest Palindrome Product
    def p4
      require 'palindrome_numbers'
      puts "The largest palindrome number that is the product of two three-digit numbers is:"
      puts PalindromeNumbers.find_largest_product(999, 100)
    end

    # Problem 5: Smallest Multiple
    def p5
      puts "The smallest positive number that is evenly divisible by all of the numbers from 1 to 20 is:"
      puts  (1..20).reduce(:lcm)
    end

    # Problem 6: Sum Square Difference
    def p6
    puts "The difference between the sum of the squares of the first "\
         "one hundred natural numbers and the square of the sum is:"
    end

    # Problem 7: 10001st prime
    def p7
      require 'prime'
      puts "The 10,001st prime number is: #{ Prime.take(10_001).last }."
    end

    # Problem 8: Largest product in a series
    def p8
      require 'big_ass_number'
      puts "The largest product of thirteen adjacent digits in that big-ass number is:"
      puts BigAssNumber.largest_product_of(13)
    end

    # Problem 9: Special Pythagorean triplet
    def p9
      require 'j_math'
      puts "The product of the values of the only Pythagorean triplet who's sum equals 1000 is: "\
           "#{ JMath.right_triangles(1000).flatten.inject(:*) }"
    end

    # Problem 10: Summation of Primes
    def p10
      require 'prime'
      puts "The sum of all the prime numbers up to 2,000,000 is: "
      puts Prime.each(2_000_000).inject(:+)
    end

    # Problem 11:	Largest product in a grid	
    def p11
      require 'grid'
      puts "The greatest product of four adjacent numbers (up, down, left, right, "\
           "or diagonally) in the given grid is: "\
           "#{ Grid.largest_product }."
    end

    # Problem 12:	Highly divisible triangular number	
    def p12
      require 'triangles'
      puts 'The first triangle number to have over five hundred divisors is:'
      puts Triangles.first_with_factor_count(500)
    end

    # Problem 13:	Large sum	
    def p13
      require 'bigsum'
      puts 'The firt ten digits of sum of the 100 given 50-digit numbers is:'
      puts "#{ Bigsum.new.first_ten_of_sum }"
    end
    
    # Problem 14:	Longest Collatz sequence	
    def p14
      require 'collatz'
      c = Collatz.longest_under(1_000_000)
      puts "The longest Collatz chaing starting under 1,000,000 begins "\
           "with: #{ c[:start] }, and is #{ c[:length] } numbers long."
    end

    # Problem 15:	Lattice paths	
    
    # Problem 16:	Power digit sum	
    def p16
      puts 'The sum of the digits of 2 to the 1000th is:'
      puts ((2**1000).to_s.chars.inject(0) { |sum, d| sum + d.to_i })
    end

    # Problem 17:	Number letter counts	
    def p17
      require 'number_words'
      puts "If all the numbers from 1 to 1000 were written out in words, "\
           "#{ NumberWords.letter_count(1, 1000) } letters would be used."
    end

    # Problem 18:	Maximum Path Sum I
    def p18
      require 'pyramid'
      require_relative '../test/pyramid_sets.rb'
      puts "The the maximum sum possible following a path from top to bottom "\
           "in the given 'pyramid' of numbers is: "\
           "#{ Pyramid.maximum_path_sum PyramidSets::P2 }"
    end

    # Problem 19:	Counting Sundays
    def p19
      require 'sundays'
      puts "#{ Sundays.firsts_of_months_between("1 Jan 1901", "31 Dec 2000") } "\
           "occurred in the 20th century."
    end

    # Problem 20:	Factorial digit sum
    def p20
      require 'j_math'
      puts "The sum of the digits of 100! is:"
      puts JMath.digits( JMath.factorial 100 ).inject(:+)
    end

    # Problem 21:	Amicable numbers
    def p21
      require 'amicable'
      puts 'The sum of all amicable numbers under 10,000 is:'
      puts Amicable.sum_to 10_000
    end

    # Problem 22:	Names scores	
    def p22
      require 'name_scores'
      puts 'The total of all the name scores is:'
      puts NameScores.grand_total
    end

    # Problem 23:	Non-abundant sums	
    
    # Problem 24:	Lexicographic permutations	
    def p24
      puts 'The millionth lexicographical permutation of the digits 0-9 is:'
      puts [0, 1, 2, 3, 4, 5, 6, 7, 8, 9].permutation.to_a[999_999].join
    end

    # Problem 25:	1000-digit Fibonacci number
    def p25
      require 'fib'
      puts 'The index of the first term in the Fibonacci sequence that '\
           'contains 1,000 digits is:'
      puts Fib.index_where_digit_count 1_000
    end

    # Problem 26:	Reciprocal cycles	
    # Problem 27:	Quadratic primes	
    
    # Problem 28:	Number spiral diagonals	
    def p28
      require 'spiral'
      s = Spiral.new 1001
      puts "The sum of the diagonals in 1001 x 1001 table of spiraling numbers is: #{ s.sum_of_diagonals }"
    end
    
    # Problem 29:	Distinct powers	
    def p29
      require "j_math"
      puts "There are #{ ( JMath.distinct_powers 2..100 ).size } "\
           "distinct terms are in the sequence generated by "\
           "a**b for 2 ≤ a ≤ 100 and 2 ≤ b ≤ 100"
    end

    # Problem 30:	Digit fifth powers

    # Problem 31:	Coin sums

    # Problem 32:	Pandigital products

    # Problem 33:	Digit cancelling fractions

    # Problem 34:	Digit factorials	
    def p34
      require 'j_math'
      puts "Working..."
      ans = ( JMath.factorial_digit_sum_match ).inject(:+)
      puts "The sum of all numbers which are equal to the sum"\
           "of the factorial of their digits is: #{ ans }."
    end

    # Problem 35:	Circular primes	
    def p35
      require 'circular_primes'
      puts "There are #{ (CircularPrimes.circular_primes_to 1_000_000).count } circular primes below 1,000,000."
    end

    # Problem 36:	Double-base palindromes
    def p38
      require 'palindrome_numbers'
      puts "The sum of all the numbers that are palindromes in both base-10 and base-2 is: "\
           "#{ PalindromeNumbers.sum_of_double_base_to 1_000_000 }"
    end

    # Problem 37:	Truncatable primes
    def p37
      require 'j_math'
      puts "The sum of all (11) truncatable prime numbers is: "
      puts JMath.truncatable_primes.inject(:+)
    end

    # Problem 38:	Pandigital multiples

    # Problem 39:	Integer right triangles
    def p39
      puts "The permimeter (≤ 1000) for which there are the most integer right triangles is:"
      puts JMath.most_right_triangles 1000
    end

    # Problem 40:	Champernowne's constant

    # Problem 41:	Pandigital prime

    # Problem 42:	Coded triangle numbers

    # Problem 43:	Sub-string divisibility

    # Problem 44:	Pentagon numbers

    # Problem 45:	Triangular, pentagonal, and hexagonal

    # Problem 46:	Goldbach's other conjecture

    # Problem 47:	Distinct primes factors
    def four_fours?(n)
      n.prime_division       == 4 &&
      (n + 1).prime_division == 4 &&
      (n + 2).prime_division == 4 &&
      (n + 3).prime_division == 4
    end

    def p47
      n, ans = 2, 0
      while ans == 0
        n += 1
        ans = n if four_fours?(n)
      end
      puts "The first of four consecutive numbers that have four prime factors is: "\
           "#{ ans }."
    end

    # Problem 48:	Self powers
    def p48
      sum = (1..1000).reduce { |sum, n| sum += n**n } 
      puts "The last 10 digits of the sum of the numbers in the series "\
           "1**1, 2**2, 3**3, ..., 1000**1000 is: "\
           "#{ sum.to_s.slice(-10, 10) }."
    end

    # Problem 49:	Prime permutations

    # Problem 50:	Consecutive prime sum

    # Problem 67: Maximum Path Sum II
    def p67
      require 'pyramid'
      require_relative '../test/pyramid_sets.rb'
      puts "The the maximum sum possible following a path from top to bottom "\
           "in the given 'pyramid' of numbers is: "\
           "#{ Pyramid.maximum_path_sum PyramidSets::P3 }"
    end


    # Unsolved Problems

    def method_missing(method, *args, &block)
      if method.match /^p\d*$/
        puts "Haven't solved that problem yet"
      else 
        super
      end
    end
  end
end

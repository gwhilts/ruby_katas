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
    end

    # Problem 6: Sum Square Difference
    def p6
    puts "The difference between the sum of the squares of the first "\
         "one hundred natural numbers and the square of the sum is:"
    end

    # Problem 7: 10001st prime

    # Problem 8: Largest product in a series
    def p8
      require 'big_ass_number'
      puts "The largest product of thirteen adjacent digits in that big-ass number is:"
      puts BigAssNumber.largest_product_of(13)
    end

    # Problem 9: Special Pythagorean triplet
    # Problem 10: Summation of Primes
    # Problem 11:	Largest product in a grid	

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
    # Problem 17:	Number letter counts	
    # Problem 18:	Maximum path sum I	
    # Problem 19:	Counting Sundays	
    # Problem 20:	Factorial digit sum

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
      puts 'The index of the first term in the Fibonacci sequence that '\
           'contains 1,000 digits is:'
      puts Fib.index_where_digit_count 1_000
    end

    # Problem 26:	Reciprocal cycles	
    # Problem 27:	Quadratic primes	
    # Problem 28:	Number spiral diagonals	
    # Problem 29:	Distinct powers	
    # Problem 30:	Digit fifth powers	
    # Problem 31:	Coin sums	
    # Problem 32:	Pandigital products	
    # Problem 33:	Digit cancelling fractions	
    # Problem 34:	Digit factorials	

    # Problem 35:	Circular primes	
    def p35
      require 'circular_primes'
      puts "There are #{ (CircularPrimes.circular_primes_to 1_000_000).count } circular primes below 1,000,000."
    end

    # Problem 36:	Double-base palindromes	
    # Problem 37:	Truncatable primes	
    # Problem 38:	Pandigital multiples	
    # Problem 39:	Integer right triangles	
    # Problem 40:	Champernowne's constant	
    # Problem 41:	Pandigital prime	
    # Problem 42:	Coded triangle numbers	
    # Problem 43:	Sub-string divisibility	
    # Problem 44:	Pentagon numbers	
    # Problem 45:	Triangular, pentagonal, and hexagonal	
    # Problem 46:	Goldbach's other conjecture	
    # Problem 47:	Distinct primes factors	
    # Problem 48:	Self powers	
    # Problem 49:	Prime permutations	
    # Problem 50:	Consecutive prime sum

    def method_missing(method, *args, &block)
      if method.match /^p\d*$/
        puts "Haven't solved that problem yet"
      else 
        super
      end
    end
  end
end

Just a place to iterate over some simple exercises, trying out different methods to solve them.

* [Anagrams](https://github.com/gwhilts/ruby_katas/#anagrams)
* [Fibonacci Sums](https://github.com/gwhilts/ruby_katas/#sum-of-even-fibonacci-numbers)
* [Roman Numerals](https://github.com/gwhilts/ruby_katas/#roman-numerals)
* [Word Clock](https://github.com/gwhilts/ruby_katas/#word-clock)
* [Largest Prime Factor](https://github.com/gwhilts/ruby_katas/#largest-prime-factor)
* [Palindrome Numbers](https://github.com/gwhilts/ruby_katas/#palindrome numbers)

----

## Anagrams

Problem: Load words into a dictionary of anagrams. Find anagram sets for a given word from the dictionary.

Relevant methods:

* `Anagrams#add_words(words)`
    * _loads an Array of words into a dictionary containing sets of anagrams_
* `Anagrams#find_for(word)`
    * _returns a sorted Array containing anagrams for the given word_

----

## Sum of Even Fibonacci Numbers

Problem: Find the sum of of the even Fibonacci numbers up to a value of 4,000,000

Relevant methods:

* `Fib.fib(n)`
    * _finds the N-th number of the Fibonacci sequence_
* `Fib.sum_of_evens_to(limit)`
    * _returns the sum of all the even Fib numbers below the given limit_

## Roman Numerals

Problem: Convert Arabic numbers to Roman numerals

Relevant methods:

* `RomanNumerals#romanize(number)`
    * _returns a String containing the Roman numeral equivalent to the given number_

----

## Word Clock

Problem: Convert numerical times into text

Times should be rounded to the nearest five minutes, then described using the following words:

"quarter", "twenty", "twenty", "five", "ten", "half", "past", "to",
"one", "two", "three", "four", "six", "seven", "eight", "nine",
and "eleven", "twelve".

If the time is on the hour, the phrase should end with "o'clock".

Examples:

```ruby
Clock.say 4, 23
=> "It is twenty five past four."

Clock.say 6, 52
=> "It is ten to six."

Clock.say 12, 58
=> "It is one o'clock."
```

----

## Largest Prime Factor

Exercise: Refine Fixnum to add a method that returns its largest prime factor.

Examples: 

```ruby
using PrimeFactors

10.largest_prime_factor
=> 5

161.largest_prime_factor
=> 23
```

----

## Palindrome Numbers

Exercise: Find the largest palindrome number created by the product of two numbers below a given limit

Examples:

```ruby
PalindromeNumbers.find_largest_product(99)
=> 9009
# 99 * 91

PalindromeNumbers.find_largest_product(999)
=> 906609
# 993 * 913
```
----


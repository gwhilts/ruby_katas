Just a place to iterate over some simple exercises, trying out different methods to solve them.

* [Anagrams](https://github.com/gwhilts/ruby_katas/#anagrams)
* [Fibonacci Sums](https://github.com/gwhilts/ruby_katas/#sum-of-even-fibonacci-numbers)
* [Roman Numerals](https://github.com/gwhilts/ruby_katas/#roman-numerals)
* [Word Clock](https://github.com/gwhilts/ruby_katas/#word-clock)
* [Largest Prime Factor](https://github.com/gwhilts/ruby_katas/#largest-prime-factor)
* [Palindrome Numbers](https://github.com/gwhilts/ruby_katas/#palindrome-numbers)
* [Largest Product in a Series](https://github.com/gwhilts/ruby_katas/#largest-product-in-a-series)

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

Exercise: Find the largest palindrome number created by the product of two numbers less than or equal to a given limit

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

## Largest Product in a Series

Exercise: Given the string of 1000 digits below, find the largest number produced by multiplying sequential digits of a specified length

```
7316717653133062491922511967442657474235534919493496983520312774506326239578318
0169848018694788518438586156078911294949545950173795833195285320880551112540698
7471585238630507156932909632952274430435576689664895044524452316173185640309871
1121722383113622298934233803081353362766142828064444866452387493035890729629049
1560440772390713810515859307960866701724271218839987979087922749219016997208880
9377665727333001053367881220235421809751254540594752243525849077116705560136048
3958644670632441572215539753697817977846174064955149290862569321978468622482839
7224137565705605749026140797296865241453510047482166370484403199890008895243450
6585412275886668811642717147992444292823086346567481391912316282458617866458359
1245665294765456828489128831426076900422421902267105562632111110937054421750694
1658960408071984038509624554443629812309878799272442849091888458015616609791913
3875499200524063689912560717606058861164671094050775410022569831552000559357297
2571636269561882670428252483600823257530420752963450
```

Examples:

```ruby
BigAssNumber.largest_product_of 2
=> 81
# 9 * 9 == 81

BigAssNumber.largest_product_of 4
=> 5832
# 9 * 9 * 8 * 9 == 5832
```

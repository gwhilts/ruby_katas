Just a place to iterate over some simple exercises, trying out different methods to solve them.

* [Anagrams](https://github.com/gwhilts/ruby_katas/#anagrams)
* [Fibonacci Sums](https://github.com/gwhilts/ruby_katas/#sum-of-even-fibonacci-numbers)
* [Roman Numerals](https://github.com/gwhilts/ruby_katas/#roman-numerals)
* [Word Clock](https://github.com/gwhilts/ruby_katas/#word-clock)
* [Largest Prime Factor](https://github.com/gwhilts/ruby_katas/#largest-prime-factor)
* [Palindrome Numbers](https://github.com/gwhilts/ruby_katas/#palindrome-numbers)
* [Largest Product in a Series](https://github.com/gwhilts/ruby_katas/#largest-product-in-a-series)
* [Fibonacci Digit Count](https://github.com/gwhilts/ruby_katas/#fibonacci-digit-count)
* [Collatz Sequence](https://github.com/gwhits/ruby_katas/#collatz-sequence)
* [Number Words](http://github.com/gwhilts/ruby_katas/#number-words)
* [Amicable Numbers](http://github.com/gwhilts/ruby_katas/#amicable-numbers)
* [Gilded Rose](http://github.com/gwhilts/ruby_katas/#gilded-rose)
* [Name Scores](http://github.com/gwhilts/ruby_katas/#name-scores)
* [Circular Primes](http://github.com/gwhilts/ruby_katas/#circular-primes)
* [Maximum Path Sum](http://github.com/gwhilts/ruby_katas/#maximum_path_sum)

----

### Anagrams

**Exercise**

Load words into a dictionary of anagrams. Find anagram sets for a given word from the dictionary.

**Examples**

```ruby
anagrams = Anagrams.new( %w{ foo echo car baz rat chore bar art tar ochre } )

anagrams.find_for 'rat'
=> ['art', 'rat', 'tar']

anagrams.find_for 'chore'
=> ['chore', 'ochre']
```

----

### Sum of Even Fibonacci Numbers

**Exercise**

Find the sum of of the even Fibonacci numbers up to a value of 4,000,000

Relevant methods:

* `Fib.fib(n)`
    * _finds the N-th number of the Fibonacci sequence_
* `Fib.sum_of_evens_to(limit)`
    * _returns the sum of all the even Fib numbers below the given limit_

### Roman Numerals

**Exercise**

Convert Arabic numbers to Roman numerals

Relevant methods:

* `RomanNumerals#romanize(number)`
    * _returns a String containing the Roman numeral equivalent to the given number_

----

### Word Clock

**Exercise**

Convert numerical times into text

Times should be rounded to the nearest five minutes, then described using the following words:

"It's", "about", "quarter", "twenty", "twenty", "five", "ten", "half", "past", "to",
"one", "two", "three", "four", "six", "seven", "eight", "nine",
and "eleven", "twelve".

If the time is on the hour, the phrase should end with "o'clock".

**Examples**

```ruby
Clock.say 4, 25
=> "It is twenty five past four."

Clock.say 6, 50
=> "It is ten to seven."

Clock.say 12, 58
=> "It is about one o'clock."
```

----

### Largest Prime Factor

**Exercise**

Refine Fixnum to add a method that returns its largest prime factor.

**Examples** 

```ruby
using PrimeFactors

10.largest_prime_factor
=> 5

161.largest_prime_factor
=> 23
```

----

### Palindrome Numbers

**Exercise**

Find the largest palindrome number created by the product of two numbers less than or equal to a given limit

**Examples**

```ruby
PalindromeNumbers.find_largest_product(99)
=> 9009
# 99 * 91

PalindromeNumbers.find_largest_product(999)
=> 906609
# 993 * 913
```
----

### Largest Product in a Series

**Exercise**

Given the string of 1000 digits below, find the largest number produced by multiplying sequential digits of a specified length

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

**Examples**

```ruby
BigAssNumber.largest_product_of 2
=> 81
# 9 * 9 == 81

BigAssNumber.largest_product_of 4
=> 5832
# 9 * 9 * 8 * 9 == 5832
```

----

### Fibonacci Digit Count

**Exercise**

One of the problems from [Project Euler](https://projecteuler.net/problem=25), is to determine the index
of the first number in the Fibonacci sequence containing 1000 digits.

The kata here is to write a method that will take a count, C, and quickly return the index of the sequence
that has at least C digits. It should be able to return the answer in less than a second, when searching 
for numbers up to at least 10,000 digits.


**Examples**

```ruby
Fib.first_with_digit_count 2
=> 8
# 0, 1, 1, 2, 3, 5, 8, 13

Fib.first_with_digit_count 3
=> 12
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144

Fib.first_with_digit_count 10000
=> 47847
# returns in ~ 0.1s
```

----

### Collatz Sequence

**Exercise**

[Project Euler problem 14](https://projecteuler.net/problem=14) asks us to find the starting number under
1,000,000 that creates the longest Collatz chain.

The sequence begins with a number n, then continues with n/2 if is even, or (3n + 1) if n is odd. The rule
is repeated until n reaches one. (It is assumed that it will always reach 1.)

To solve the Project Euler problem, let's write a class with a method that will return the Collatz sequence
beginning with any given positive number. Then add a method that returns the starting number and length of 
the longest chain that begins with a number less than or equal to a given limit.

**Examples**

```ruby
Collatz.sequence_from 13
=> [13, 40, 20, 10, 5, 16, 8, 4, 2, 1]

Collatz.sequence_from 6
=> [6, 3, 10, 5, 16, 8, 4, 2, 1]

Collatz.longest_under 8
=> { start: 7, length: 17 }

Collatz.longest_under 2000
=> { start: 1161, length: 182 }
```

----

### Number Words

**Exercise**

[Project Euler problem 17](https://projecteuler.net/problem=17) asks us to 
convert all the numbers from 1 to 1000 to English phrases, then count up all
the letters.

To solve the problem, create a class with two methods: one that will convert
any number (up to at least 9999) to an English phrase, and a second that will
return the letter count for any number or range of numbers (up to 9999).

The phrases should adhere to the British tradition of using the word "and" like so:

- 413  => "four hundred and thirteen"
- 2148 => "two thousand one hundred and forty eight"

The count should ignore spaces and other non-letter characters.

**Examples**

```ruby
NumberWords.say 916
=> "nine hundred and sixteen"

NumberWords.say 2400
=> "two thousand four hundred"

NumberWord.letter_count 16
=> 7

NumberWord.letter_count 1, 20
=> 112
```

### Amicable Numbers

**Exercise**

_From [Project Euler, Problem 21](https://projecteuler.net/problem=21)_

> Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
> If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.
> 
> For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. 
> The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
> 
> Evaluate the sum of all the amicable numbers under 10000.

To solve this problem let's create a class with two public methods: One that will
return the unique pairs of amicable numbers up to a given limit, and another that 
will return the sum of all the amicable numbers up to a limit.

**Examples**

```ruby
AmicableNumbers.pairs_to 300
=> [[220, 284]]

AmicableNumbers.pairs_to 2000
=> [[220, 284], [1184, 1210]] 

AmicableNumbers.sum_to 300
=> 504

AmicableNumbers.sum_to 2000
=> 2898
```

----

### Gilded Rose

**Exercise**

Refactor the `GildedRose` so that you easily add code to support the new requirement described below:

> **Original Description of the Gilded Rose**
>
> Hi and welcome to team Gilded Rose. As you know, we are a small inn with a prime location in a prominent city 
> run by a friendly innkeeper named Allison. We also buy and sell only the finest goods. Unfortunately, our goods 
> are constantly degrading in quality as they approach their sell by date. We have a system in place that updates 
> our inventory for us. It was developed by a no-nonsense type named Leeroy, who has moved on to new adventures. 
> Your task is to add the new feature to our system so that we can begin selling a new category of items. First an 
> introduction to our system:
> 
> All items have a Days Remaining value which denotes the number of days we have to sell the item
> All items have a Quality value which denotes how valuable the item is
> At the end of each day our system lowers both values for every item
> Pretty simple, right? Well this is where it gets interesting:
> 
> Once the sell by date has passed, Quality degrades twice as fast
> The Quality of an item is never negative
> "Aged Brie" actually increases in Quality the older it gets
> The Quality of an item is never more than 50
> "Sulfuras", being a legendary item, never has to be sold or decreases in Quality
> "Backstage passes", like aged brie, increases in Quality as it's Days Remaining value approaches; Quality increases by 2
> when there are 10 days or less and by 3 when there are 5 days or less but Quality drops to 0 after the concert
> We have recently signed a supplier of conjured items. This requires an update to our system:
> 
> "Conjured" items degrade in Quality twice as fast as normal items.
> 
> Just for clarification, an item can never have its Quality increase above 50, however "Sulfuras" is a legendary
> item and as such its Quality is 80 and it never alters.


**Note**

The code here is based on the version Sandi Metz used in her talk,
"All the Little Things". It is slightly different than Jim Weirich's
version (itself a variation of a C# example). Jim used an unbound method,
`update_quality(item)` that took a Struct with three attributes: a `name`,
a `quality` metric, and a `sell_in` value representing the number of
days remaining before the item should be sold. In Sandi's version, the
method and the attributes belong to instances of a `GildedRose` class 
(before refactoring). In both versions the `update_quality` method
(which Sandi call `tick`) is fifty or so lines of tangled, nested if
statements, that beg to be refactored into something more manageable.

I've also implemented the test Jim included with his version, adjusted
to accommodate using the GildedRose class, and ported from somewhat
dated rspec-given code to minitest-spec.  All the tests for the 
existing code is passing. The tests for the new "Conjured Item" code is
set to skip, so we can refactor "in the green" before adding it.

**Examples**

```ruby

item = GildedRose.new("Free Range Platypus Eggs", 10, 6)
=> #<GildedRose:0x007ff34d93b640 @days_remaining=6, @name="Free Range Platypus Eggs", @quality=10>

item.update_quality

item.days_remaining
=> 5

item.quality
=> 9


tix = GildedRose.new("Backstage pass to Elvis Costello show", 39, 1)
=> #<GildedRose:0x007ff34da0ba98 @days_remaining=2, @name="Backstage pass to Elvis Costello show", @quality=40>

tix.update_quality

tix.days_remaining
=> 0

tix.quality
=> 42

tix.update_quality

tix.days_remaining
=> -1

tix.quality
=> 0
```

----

### Name Scores

**Exercise**

_[Project Euler, Problem 22](https://projecteuler.net/problem=22)_

> Using names.txt, a 46K text file containing over
> five-thousand first names, begin by sorting it into
> alphabetical order. Then working out the alphabetical
> value for each name, multiply this value by its
> alphabetical position in the list to obtain a name score.
> 
> For example, when the list is sorted into alphabetical order,
> COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th
> name in the list. So, COLIN would obtain a score of
> 938 × 53 = 49714.
> 
> What is the total of all the name scores in the file?"

To solve this problem, create a class NameScores. Implement a class method `.score_of(name)`
that accepts a name from the text file and returns its score. (This will ensure that
the list is correctly sorted and the scoring algorithm is working as directed.

Then implement another class method `.grand_total` that will return the sum of all
the scores. (You can check your answer on P.E.)

**Examples**

```ruby
NameScores.score_of 'COLIN'
=> 49714

NameScores.score_of 'AARON'
=> 49

NameScores.grand_total
=> ????????
```

----

### Circular Primes

**Exercise**

_[Project Euler, Problem 35](https://projecteuler.net/problem=35)_

> The number, 197, is called a circular prime because all rotations 
> of the digits: 197, 971, and 719, are themselves prime.
> 
> There are thirteen such primes below 100: 
> 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.
> 
> How many circular primes are there below one million?

To solve this problem create Circular Primes class with a class 
method `.circular_primes_to(limit)` that returns all the circular
prime numbers up to the given limit.


**Examples**

```ruby
CircularPrimes.circular_primes_to 100
=> [2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, 97]

CircularPrimes.circular_primes_to 1_000
=> [2, 3, 5, 7, 11, 13, ..., 719, 733, 919, 971, 991]
```

----

### Maximum Path Sum

**Exercise**

_From [Project Euler, Problem 18](https://projecteuler.net/problem=18)_

Imagine a 'pyramid' of numbers like so:

<center>
3    
7 4    
2 4 6    
8 5 9 3    
</center>

The following a path of vertically adjacent numbers from top to bottom, the highest
sum possible is 23: 3 + 7 + 4 + 9

Now, imagine this set:

<center>
5  
2 9  
8 3 7  
1 4 6 0  
</center>

Here, the maximum path sum would be 27: 5 + 9 + 7 + 6. 

Project Euler problem 18 asks us to calculate the highest path sum, given the pyramid below: 

<center>
75  
95 64  
17 47 82  
18 35 87 10  
20 04 82 47 65  
19 01 23 75 03 34  
88 02 77 73 07 63 67  
99 65 04 28 06 16 70 92  
41 41 26 56 83 40 80 70 33  
41 48 72 33 47 32 37 16 94 29  
53 71 44 65 25 43 91 52 97 51 14  
70 11 33 28 77 73 17 78 39 68 17 57  
91 71 52 38 17 14 91 43 58 50 27 29 48  
63 66 04 68 89 53 67 30 73 16 69 87 40 31  
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23  
</center>

To solve this problem, write a method that accepts a nested array representing 
a 'pyramid' like the ones above, and returns the maximum path sum possible.

**Examples**

(Assume the constants P1 and P2 have been assigned to first two sets of numbers above.)

```ruby
Pyramid.maximum_path_sum Pyramid::P1
=> 23 # 3 + 7 + 4 + 9

Pyramid.maximum_path_sum Pyramid::P2
=> 27  # 5 + 9 + 7 + 6

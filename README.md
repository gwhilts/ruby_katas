Just a place to iterate over some simple exercises, trying out different methods to solve them.

## Anagrams

Problem: Load words into a dictionary of anagrams. Find anagram sets for a given word from the dictionary.

Relevant methods:

* `Anagrams#add_words(words)`
    * _loads an Array of words into a dictionary containing sets of anagrams_
* `Anagrams#find_for(word)`
    * _returns a sorted Array containing anagrams for the given word_

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

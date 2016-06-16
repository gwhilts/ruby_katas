require 'test_helper'
require 'number_words'

class NumberWordsTest < Minitest::Test
  describe 'NumberWords.say' do
    it 'converts a number into a string of English words' do
      ( NumberWords.say    4 ).must_equal 'four'
      ( NumberWords.say   16 ).must_equal 'sixteen'
      ( NumberWords.say   28 ).must_equal 'twenty eight'
      ( NumberWords.say  519 ).must_equal 'five hundred and nineteen'
      ( NumberWords.say  700 ).must_equal 'seven hundred'
      ( NumberWords.say 1236 ).must_equal 'one thousand two hundred and thirty six'
    end
  end

  describe 'NumberWords.letter_count(low, high)' do
    it 'counts the number of letters in a given range of numbers' do
      # Spaces and other non-letter chars are ignored
      ( NumberWords.letter_count 403 ).must_equal        19
      ( NumberWords.letter_count 1, 10 ).must_equal      39
      ( NumberWords.letter_count 1001, 2000 ).must_equal 32113
    end
  end
end

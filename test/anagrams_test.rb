require "test_helper"
require "anagrams"

class AnangramsTest < MiniTest::Test
  def test_it_sorts_words_into_sets_of_anagrams
    # Given the words %w{ cat ochre art tar act dog rat chore god tam mat foo }, 
    # the dictionary should contain six sets anagrams:
    # {
    #   "act"   => ["act" "cat"],
    #   "amt"   => ["mat", "tam"],
    #   "art"   => ["art", "rat", "tar"],
    #   "cehor" => ["chore", "ochre"],
    #   "dgo"   => ["dog", "god"],
    #   "foo"   => ["foo"]
    # }
    Anagrams.add_words %w{ cat ochre art tar act dog rat chore god tam mat foo }
    assert Anagrams.dict.keys.count == 6
  end
end

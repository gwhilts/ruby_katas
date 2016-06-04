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
    ags = Anagrams.new %w{ cat ochre art tar act dog rat chore god tam mat foo }
    assert_equal ags.dict.keys.count, 6
  end

  def test_it_finds_anagrams
    # Given the words %w{ cat ochre art tar act dog rat chore god tam mat foo },
    # when asked to find anangarams for "rat", it should find ["art", "rat", "tar"]
    ags = Anagrams.new %w{ cat ochre art tar act dog rat chore god tam mat foo }
    assert_equal ags.find_for("rat"), ["art", "rat", "tar"]
  end
end

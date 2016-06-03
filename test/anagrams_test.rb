require "test_helper"

class AnangramsTest < MiniTest::Test
  def test_it_sorts_words_into_sets_of_anagrams
    Anagrams.add_words %w{ cat ochre art tar dog rat chore god tam mat foo }
    assert Anagrams.dict.keys.count == 6
  end
end

require "test_helper"
require "anagrams"

describe Anagrams do
  let(:ags) { ags = Anagrams.new %w{ cat resume art tar act dog rat god résumé tam mat foo } }
  
  describe "#add_words" do
    it "adds words to the anagram dictionary" do
      _( ags.dict.keys.count ).must_equal 6
      ags.add_words %w{ chore ochre atm }
      _( ags.dict.keys.count ).must_equal 7
    end
  end

  describe "#find_for" do
    it "finds anagaams for a given word" do
      _( ags.find_for 'rat' ).must_equal ['art', 'rat', 'tar']
    end

    it "deals with accented characters" do
      ( ags.find_for 'résumé' ).must_equal ['resume', 'résumé']
    end
  end
end

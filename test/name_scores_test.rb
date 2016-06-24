require 'test_helper'
require 'name_scores'

describe NameScores do
  describe "score_of" do
    it "correctly calculates the value of a name" do
      NameScores.score_of("AARON").must_equal 49
      NameScores.score_of("COLIN").must_equal 49714
    end
  end
  describe "grand_total" do
    it "correctly calculates the sum of all the name scores" do
      NameScores.grand_total.must_equal 871_198_282
    end
  end
end

require 'test_helper'
require 'clock'

class ClockTest < Minitest::Test

  describe "Clock.say" do
    it "converts numerical hours and minutes to textual descriptions" do
      _( Clock.say  5, 0  ).must_equal "It's five o'clock."
      _( Clock.say  3, 5  ).must_equal "It's five past three."
      _( Clock.say  2, 10 ).must_equal "It's ten past two."
      _( Clock.say  8, 15 ).must_equal "It's quarter past eight."
      _( Clock.say  1, 20 ).must_equal "It's twenty past one."
      _( Clock.say 12, 25 ).must_equal "It's twenty five past twelve."
      _( Clock.say 11, 30 ).must_equal "It's half past eleven."
      _( Clock.say 10, 35 ).must_equal "It's twenty five to eleven."
      _( Clock.say  9, 40 ).must_equal "It's twenty to ten."
      _( Clock.say  6, 45 ).must_equal "It's quarter to seven."
      _( Clock.say  4, 50 ).must_equal "It's ten to five."
      _( Clock.say  7, 55 ).must_equal "It's five to eight."
    end
    it "rounds to the nearest 5 minute interval" do
      _( Clock.say  1, 11 ).must_equal "It's about ten past one."
      _( Clock.say  3, 43 ).must_equal "It's about quarter to four."
      _( Clock.say 12, 58 ).must_equal "It's about one o'clock."
    end
  end
end

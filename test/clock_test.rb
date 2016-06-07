require 'test_helper'
require 'clock'

class ClockTest < Minitest::Test

  describe "Clock.say" do
    it "converts numerical hours and minutes to textual descriptions" do
      ( Clock.say  5, 0  ).must_equal "It is five o'clock."
      ( Clock.say  3, 5  ).must_equal "It is five past three."
      ( Clock.say  2, 10 ).must_equal "It is ten past two."
      ( Clock.say  8, 15 ).must_equal "It is quarter past eight."
      ( Clock.say  1, 20 ).must_equal "It is twenty past one."
      ( Clock.say 12, 25 ).must_equal "It is twenty five past twelve."
      ( Clock.say 11, 30 ).must_equal "It is half past eleven."
      ( Clock.say 10, 35 ).must_equal "It is twenty five to eleven."
      ( Clock.say  9, 40 ).must_equal "It is twenty to ten."
      ( Clock.say  6, 45 ).must_equal "It is quarter to seven."
      ( Clock.say  4, 50 ).must_equal "It is ten to five."
      ( Clock.say  7, 55 ).must_equal "It is five to eight."
    end
    it "rounds to the nearest 5 minute interval" do
      ( Clock.say  1, 11 ).must_equal "It is ten past one."
      ( Clock.say  3, 43 ).must_equal "It is quarter to four."
      ( Clock.say 12, 58 ).must_equal "It is one o'clock."
    end
  end
end

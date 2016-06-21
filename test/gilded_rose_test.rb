require 'test_helper'
require 'gilded_rose'

describe GildedRose do
  let(:item_name) { "Organic Foobar" }
  let(:initial_days)    { 5 }
  let(:initial_quality) { 10 }
  let(:item) { GildedRose.new( item_name, initial_quality, initial_days) }

  describe "#update_quality" do
    before(:each) do
      item.update_quality
    end

    it "decreases the days remaining by one" do 
      item.days_remaining.must_equal ( initial_days - 1 )
    end
  
    describe "Normal Items" do
      describe "Before sell date" do
        it "decreases the quality by one" do
          item.quality.must_equal ( initial_quality - 1 )
        end
      end

      describe "On the sell date" do
        let(:initial_days) { 0 }

        it "decreases the quality by 2" do
          item.quality.must_equal (initial_quality - 2)
        end
      end

      describe "Past the sell date" do
        let(:initial_days) { -10 }

        it "decreases the quality by 2" do
          item.quality.must_equal (initial_quality - 2)
        end
      end

      describe "When the quality reaches 0" do
        let(:initial_quality) { 0 }

        it "does not decrease the quality below 0" do
          item.quality.must_equal 0
        end
      end
    end

    describe "Aged Brie" do
      let(:item_name) { "Aged Brie" }

      describe "Before sell date" do
        describe "Before max quality is reached" do
          it "increases the quality by 1" do
            item.quality.must_equal ( initial_quality + 1 )
          end
        end

        describe "When max quality is reached" do
          let(:initial_quality) { 50 }
          it "does not increase the quality past 50" do
            item.quality.must_equal 50
          end
        end
      end

      describe "On sell date" do
        let(:initial_days) { 0 }

        describe "Before max quality is reached" do
          it "increases the quality by 2" do
            item.quality.must_equal ( initial_quality + 2 )
          end
        end

        describe "When max quality is reached" do
          let(:initial_quality) { 49 }

          it "does not increase the quality past 50" do
            item.quality.must_equal 50
          end
        end
      end

      describe "After sell date" do 
        let(:initial_days) { -10 }

        describe "Before max quality is reached" do
          it "increases the quality by 2" do
            item.quality.must_equal ( initial_quality + 2 )
          end
        end

        describe "When max quality is reached" do
          let(:initial_quality) { 50 }

          it "does not increase the quality past 50" do
            item.quality.must_equal 50
          end
        end

      end
    end
 
    describe "Sulfuras" do
      let(:item_name) { "Sulfuras, Hand of Ragnaros" }
      let(:initial_quality) { 80 }
      it "doesn't change the days remaining" do
        item.days_remaining.must_equal initial_days
      end
      it "always has a quality of 80" do
        item.quality.must_equal 80
      end
    end
    
    describe "Backstage Pass" do
      let(:item_name) { "Backstage pass to Punch Brothers Concert" }

      describe "Long before the sell date" do
        let(:initial_days) { 20 }

        it "increases the qualiyt by 1" do
          item.quality.must_equal (initial_quality + 1)
        end
      end

      describe "Close to the sell date" do
        let(:initial_days) { 9 }

        it "increases the qualiyt by 2" do
          item.quality.must_equal (initial_quality + 2)
        end
      end

      describe "Very close to the sell date" do
        let(:initial_days) { 2 }

        it "increases the qualiyt by 3" do
          item.quality.must_equal (initial_quality + 3)
        end
      end

      describe "After the sell date" do
        let(:initial_days) { -1 }

        it "always has quality of 0" do
          item.quality.must_equal 0
          item.update_quality
          item.quality.must_equal 0
        end
      end

    end

    describe "Conjured Items" do
      let(:item_name) { "Conjured Mana Cake" }

      describe "Before sell date" do
        it "decreases the quality by two" do
          item.quality.must_equal ( initial_quality - 2 )
        end
      end

      describe "On the sell date" do
        let(:initial_days) { 0 }

        it "decreases the quality by four" do
          item.quality.must_equal (initial_quality - 4)
        end
      end

      describe "Past the sell date" do
        let(:initial_days) { -10 }

        it "decreases the quality by four" do
          item.quality.must_equal (initial_quality - 4)
        end
      end

      describe "When the quality reaches 0" do
        let(:initial_quality) { 0 }

        it "does not decrease the quality below 0" do
          item.quality.must_equal 0
        end
      end
    end

  end
end

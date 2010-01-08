$:.unshift(File.join(File.dirname(__FILE__), '/../lib'))
require 'hand_high_card'
require 'card'


describe HandHighCard do
  hand_examples = [
    ["1C 2H 3D 7C 4H", "7C"],
    ["2C 2H 3S 4C 6H", "6H"],
    ["2C 2H QS 4C 6H", "QS"],
    ["2C 2H 10S 4C 6H", "10S"]
  ]
  
  it "should pick the highest card from hand" do
    hand_examples.each do |hand_with_highest|
      highcard = HandHighCard.new(hand_with_highest[0])
      highcard.matches?.should == true
      highcard.to_s.should == "High card #{hand_with_highest[1]}"
    end  
  end
  
  it "should have score 1" do
    highcard = HandHighCard.new(hand_examples[0][0])
    highcard.score.should == 1
  end

  
end
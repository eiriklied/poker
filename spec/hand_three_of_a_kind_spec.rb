$:.unshift(File.join(File.dirname(__FILE__), %w[.. lib]))
require 'hand_three_of_a_kind'
require 'card'
require 'spec'


describe HandThreeOfAKind do
  it "should find three of a kind in a hand" do
    hand = HandThreeOfAKind.new("AS AD AC 3C 4C 5S 7D")
    hand.matches?.should == true
    hand.to_s.should == "Three of a kind: A"
  end
  
  it "should not match a hand without three of a kind" do
    hand = HandThreeOfAKind.new("2S JD AC 3C 4C 5S 7D")
    hand.matches?.should == false
    hand.to_s.should == "Not Three of a kind"
  end
  
  it "should have score 4" do
    pair = HandThreeOfAKind.new("AS AD AC 3C 4C 5S 7D")
    pair.score.should == 4
  end
  
  
end
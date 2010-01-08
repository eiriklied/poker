$:.unshift(File.join(File.dirname(__FILE__), %w[.. lib]))
require 'hand_pair'
require 'card'
require 'spec'

describe HandPair do

  it "should find a pair in hand" do
    pair = HandPair.new("AS AD 2C 3C 4C 5S 7D")
    pair.matches?.should == true
  end
  
  it "should not find a pair in a hand without pairs" do
    pair = HandPair.new("AS 5D 2C 3C 4C")
    pair.matches?.should == false
  end
  
  it "should return correct description" do
    pair = HandPair.new("AS AD 2C 3C 4C")
    pair.to_s.should == "Pair of A"
  end
  
  it "should return correct description if not pair" do
    pair = HandPair.new("AS 9D 2C 3C 4C")
    pair.to_s.should == "NOT PAIR"
  end

end
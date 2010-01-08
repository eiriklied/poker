$:.unshift(File.join(File.dirname(__FILE__), %w[.. lib]))
require 'hand_pair'
require 'card'
require 'spec'

describe HandPair do

  it "should find a pair in hand" do
    pair = HandPair.new("AS AD 2C 3C 4C")
    pair.matches.should == true
  end
  
  it "should not find a pair in a hand without pairs" do
    pair = HandPair.new("AS 5D 2C 3C 4C")
    pair.matches.should == false
  end

end
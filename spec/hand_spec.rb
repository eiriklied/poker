$:.unshift(File.join(File.dirname(__FILE__), '/../lib'))
require 'hand'
require 'card'
require 'spec'

describe Hand do
  
  it "should recognize a string as one card" do
    card = Hand.new("2H").cards[0]
    card.suite.should == "H"
    card.number_value.should == 2
  end

  it "should be able to split a card string into an array of cards" do
    cards = Hand.new("2H 3K").cards
    cards[0].suite.should == "H"
    cards[0].number_value.should == 2
    cards[1].suite.should == "K"
    cards[1].number_value.should == 3
  end

end

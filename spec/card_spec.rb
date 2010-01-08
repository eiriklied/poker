$:.unshift(File.join(File.dirname(__FILE__), '/../lib'))
require 'card'
require 'spec'

describe Card do
  it "should return 6 for number value when card is 6H" do
    card = Card.new("6H")
    card.number_value.should == 6
    card.suite.should == "H"
  end
  
  it "should return 12 for number value when card is QK" do
    card = Card.new("QK")
    card.number_value.should == 12
    card.suite.should == "K"
  end
  
  it "should fail on invalid number value" do
     lambda {Card.new("22H")}.should raise_error
     lambda {Card.new("0H")}.should raise_error
     lambda {Card.new("PH")}.should raise_error
  end
  
  it "should fail on invalid suite" do
    lambda {Card.new("2X")}.should raise_error
  end
   
   

end

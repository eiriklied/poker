require 'hand'

class HandHighCard < Hand
  
  def find_high_card cards
   sorted_cards = cards.sort {|x,y| y.number_value <=> x.number_value}
   sorted_cards[0]
  end
  
  def matches?
    true
  end
  
  def to_s
    "High card #{find_high_card(@cards)}"
  end
  
  def score
    1
  end
  
end
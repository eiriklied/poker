require 'hand'

class HandThreeOfAKind < Hand
  def initialize(hand)
    super(hand)
    
    card_groups = {}
    @cards.each do |card|
      if card_groups.key? card.value
        card_groups[card.value] += 1
      else
        card_groups[card.value] = 1
      end
    end
    
    card_groups.each do |key, val|
      if val >= 3
        @three_of = key
      end
    end
  end
  
  def matches?
    !@three_of.nil?
  end
  
  def to_s
    if matches? 
      "Three of a kind: #{@three_of}"
    else
      "Not Three of a kind"
    end
  end
  
  def score
    4
  end
end
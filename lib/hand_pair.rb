require 'hand'

class HandPair < Hand

  def initialize(cards_string)
    super(cards_string)
    
    card_groups = {}
    @cards.each do |card|
      if card_groups.key? card.value
        card_groups[card.value] += 1
      else
        card_groups[card.value] = 1
      end
    end
    
    card_groups.each do |key, val|
      if val >= 2
        @pair_value = key
      end
    end
  end


  def matches?
    !@pair_value.nil?
  end
  
  def to_s
    if matches?
      "Pair of #{@pair_value}"
    else
      "NOT PAIR"
    end
  end
  
  def score
    2
  end
  
end
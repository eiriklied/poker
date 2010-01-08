require 'hand'

class HandPair < Hand

  def matches
    card_groups = {}
    @cards.each do |card|
      if card_groups.key? card.number_value
        card_groups[card.number_value] += 1
      else
        card_groups[card.number_value] = 1
      end
    end
    
    card_groups.values.each do |val|
      if val >= 2
        return true
      end
    end
    
    false
  end
  
end
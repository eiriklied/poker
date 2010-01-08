class Card
  attr_reader :number_value, :value, :suite
  
  @@picture_cards = {
    "J" => 11,
    "Q" => 12,
    "K" => 13,
    "A" => 14
  }
  
  @@suites = %w{C S H D}

  def initialize(val)
    matches = val.match /^(.+)(.)$/
    @value = matches[1]
    @suite = matches[2]
    
    unless @@suites.include? @suite
      raise "Invalid card suite #{@suite}"
    end
    
    if @@picture_cards.key? @value
      @number_value = @@picture_cards[@value]
    else
      @number_value = @value.to_i
    end
    
    if @number_value > 14 || @number_value <= 0
      raise "Invalid card value #{@value}"
    end
    
    
  end
  
  def to_s
    @value + @suite
  end
  
  
  

end
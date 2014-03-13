class Card

  # name_to_values = Hash.new {|hash, key| hash[key] = key.to_i}
  NAMES_TO_VALUES = { 'A' => 14, 'K' => 13, 'Q' => 12, 'J' => 11 }

  attr_reader :value, :suit, :name
  def initialize(name, suit)
    @value = NAMES_TO_VALUES.fetch(name, name.to_i)
    @suit = suit
    @name = name
  end

end

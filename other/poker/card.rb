class Card

  name_to_values = Hash.new {|hash, key| hash[key] = key.to_i}
  name_to_values['A'] = 14
  name_to_values['K'] = 13
  name_to_values['Q'] = 12
  name_to_values['J'] = 11
  NAME_TO_VALUES = name_to_values

  attr_reader :value, :suit
  def initialize(name, suit)
    @value = NAME_TO_VALUES[name]
    @suit = suit
  end
end

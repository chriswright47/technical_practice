# Instructions are to design data stuctures for a deck of cards
# and explain how to subclass to implement certain card games

Card = Struct.new(:name, :suit) do
  def self.build(args)
    self.new(args[:name], args[:suit])
  end

  def to_s
    "#{name} of #{suit}"
  end
end

king_h = Card.build(suit: 'hearts', name: 'king')
puts king_h


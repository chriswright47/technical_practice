# Instructions are to design data stuctures for a deck of cards
# and explain how to subclass to implement certain card games

class Card
  attr_reader :name, :suit
  def initialize(args)
    @name = args[:name]
    @suit = args[:suit])
  end

  def value
    case
    when name == 'ace'
      1
    when name.to_i == 0
      10
    else
      name.to_i
    end
  end

  def to_s
    "#{name} of #{suit}"
  end
end

class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = cards
  end

  def self.build
    cards = []
    4.times do |i|
      13.times do |j|
        cards << Card.build(suit: suits[i], name: names[j])
      end
    end
    self.new(cards)
  end

  def to_s
    cards.each {|card| puts card}
  end

  private
  def self.suits
    %w[hearts spades clubs diamonds]
  end

  def self.names
    %w[2 3 4 5 6 7 8 9 10 jack queen king ace]
  end

end

deck = Deck.build

puts deck.cards.size == 52
puts deck.cards.select {|card| card.name == '3'}.size == 4
puts deck.cards.select {|card| card.name == 'king'}.size == 4
puts deck.cards.select {|card| card.suit == 'spades'}.size == 13
puts deck.cards.select {|card| card.value == 10}.size == 16
puts deck.cards.select {|card| card.value < 10}.size == 36


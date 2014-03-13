class Hand
  attr_reader :cards

  def rank
    POSSIBLE_RANKS.each do |name|
      return name.to_s.gsub('_', ' ') if send(name.to_sym)
    end
  end


  private

  def initialize(cards)
    @cards = cards
  end

  POSSIBLE_RANKS = [:royal_flush,
                    :straight_flush,
                    :four_of_a_kind,
                    :full_house,
                    :flush,
                    :straight,
                    :three_of_a_kind,
                    :two_pair,
                    :pair,
                    :high_card
                   ]

  def royal_flush
    flush? && straight? && royals?
  end

  def straight_flush
    flush? && straight?
  end

  def four_of_a_kind
    four_of_a_kind?
  end

  def full_house
    value_frequencies.values.include?(3) && value_frequencies.values.include?(2)
  end

  def flush
    flush?
  end

  def straight
    straight?
  end

  def three_of_a_kind
    value_frequencies.values.include?(3)
  end

  def two_pair
    value_frequencies.values.sort{|x,y| x <=> y} == [1,2,2]
  end

  def pair
    value_frequencies.values.include?(2)
  end

  def high_card
    true
  end

  def flush?
    suit = cards[0].suit
    cards.each { |card| return false if card.suit != suit }
    true
  end

  def straight?
    4.times do |i|
      return false unless values[i] + 1 == values[i+1]
    end
    true
  end

  def royals?
    values == [10,11,12,13,14]
  end

  def ordered_cards
    @ordered_cards ||= cards.sort {|a,b| a.value <=> b.value}
  end

  def values
    @values ||= ordered_cards.map {|card| card.value}
  end

  def four_of_a_kind?
    value_frequencies.values.include?(4)
  end

  def value_frequencies
    @value_frequencies ||= count_values
  end

  def count_values
    counts = Hash.new(0)
    values.each {|value| counts[value] += 1}
    counts
  end

end

require_relative 'hand'
require_relative 'card'

royal_flush = Hand.new([Card.new('A', 'hearts'),
                        Card.new('K', 'hearts'),
                        Card.new('Q', 'hearts'),
                        Card.new('J', 'hearts'),
                        Card.new('10', 'hearts')
                       ])

straight_flush = Hand.new([ Card.new('9', 'spades'),
                            Card.new('8', 'spades'),
                            Card.new('Q', 'spades'),
                            Card.new('J', 'spades'),
                            Card.new('10', 'spades')
                          ])

four_of_a_kind = Hand.new([ Card.new('2', 'hearts'),
                            Card.new('2', 'diamonds'),
                            Card.new('2', 'spades'),
                            Card.new('2', 'clubs'),
                            Card.new('10', 'hearts')
                          ])

full_house = Hand.new([Card.new('A', 'hearts'),
                       Card.new('A', 'spades'),
                       Card.new('A', 'clubs'),
                       Card.new('3', 'hearts'),
                       Card.new('3', 'diamonds')
                      ])

flush = Hand.new([ Card.new('2', 'diamonds'),
                   Card.new('9', 'diamonds'),
                   Card.new('3', 'diamonds'),
                   Card.new('6', 'diamonds'),
                   Card.new('Q', 'diamonds')
                  ])

straight = Hand.new([Card.new('4', 'hearts'),
                     Card.new('6', 'spades'),
                     Card.new('5', 'clubs'),
                     Card.new('7', 'hearts'),
                     Card.new('3', 'diamonds')
                      ])

three_of_a_kind = Hand.new([ Card.new('10', 'hearts'),
                             Card.new('10', 'spades'),
                             Card.new('10', 'clubs'),
                             Card.new('2', 'hearts'),
                             Card.new('7', 'diamonds')
                            ])

two_pair = Hand.new([Card.new('7', 'hearts'),
                     Card.new('7', 'spades'),
                     Card.new('J', 'clubs'),
                     Card.new('4', 'hearts'),
                     Card.new('4', 'diamonds')
                    ])

pair = Hand.new([Card.new('J', 'hearts'),
                 Card.new('7', 'spades'),
                 Card.new('5', 'clubs'),
                 Card.new('3', 'hearts'),
                 Card.new('3', 'diamonds')
                ])

bad_hand = Hand.new([Card.new('A', 'hearts'),
                     Card.new('2', 'spades'),
                     Card.new('5', 'clubs'),
                     Card.new('7', 'hearts'),
                     Card.new('9', 'diamonds')
                    ])

p full_house.rank == 'full house'
p royal_flush.rank == 'royal flush'
p straight_flush.rank == 'straight flush'
p four_of_a_kind.rank == 'four of a kind'
p flush.rank == 'flush'
p straight.rank == 'straight'
p three_of_a_kind.rank == 'three of a kind'
p two_pair.rank == 'two pair'
p pair.rank == 'pair'
p bad_hand.rank == 'high card'

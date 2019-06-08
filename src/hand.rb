require_relative './card'

class Hand
  attr_reader :points, :cards

  def initialize
    @cards = []
    @points = 0
  end

  def add_card(card)
    cards << card
    ace_check!(cards.last)
  end

  def show_cards
    cards.reduce('') { |result, card| result << "#{card.sign} " }
  end

  def ace_check!(card)
    @points += card.value == 11 && points > 10 ? 1 : card.value
  end

  def full_hand?
    cards.size == 3
  end
end

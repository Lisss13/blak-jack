require_relative './user'

class Dealer < User
  def initialize
    super('Dealer')
  end

  def move(deck)
    if hand.points >= 18 && !skipped
      skip_move
    else
      puts "#{name} takes a card"
      take_card(deck)
    end
  end
end

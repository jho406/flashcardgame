require_relative 'ui'
class Game
  attr_reader :deck
  def initialize(deck)
    @deck = deck
  end
  
  def guess?(term)
    term == deck.first.term
  end

end

class Card
  attr_reader :term, :definition
  
  def initialize(hash)
    @term = hash[:term]
    @definition = hash[:definition] 
  end

end


card1 = Card.new({:term=> "alias", :definition => "To create a second name for the variable or method."})
card2 = Card.new({:term=> "dbc", :definition => "school"})


input = gets.chomp
# puts 
deck = [card1, card2]
game = Game.new(deck)

puts game.guess?(input)



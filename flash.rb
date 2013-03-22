require_relative 'ui'
require 'csv'
class Game
  attr_reader :deck
  def initialize(deck)
    @deck = deck
  end
  
  def guess?(term)
    term == deck.first.term
  end

end

module Deck
  def self.load
    cards = []
    File.read("deck.txt").split("\n").each_slice(3) do |lines|
      card = lines.select{|word|word != ""}
      cards << {:term=>card.last, :definition=> card.first}
    end
    cards.map{|card| Card.new(card)}
  end
end

class Card
  attr_reader :term, :definition
  
  def initialize(hash)
    @term = hash[:term]
    @definition = hash[:definition] 
  end

end


# card1 = Card.new({:term=> "alias", :definition => "To create a second name for the variable or method."})
# card2 = Card.new({:term=> "dbc", :definition => "school"})

# input = gets.chomp
# # puts 
# deck = [card1, card2]
# game = Game.new(deck)

# puts game.guess?(input)

# File.read("deck.txt").split("\n").each_slice(3) do |lines|
#   card = lines.select{|word|word != ""}

# end

game = Game.new(Deck.load)
p game.guess?("alias")
p game.deck.first

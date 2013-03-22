require_relative 'ui'
require 'csv'
class Game
  attr_reader :deck
  def initialize(deck)
    @deck = deck
  end
  
  def guess?(card, guess)
    guess == card.term
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

game = Interface.new
puts game

#stuff
class Interface
  attr_accessor 

  def initialize
    @game = Game.new(Deck.load) ## FEED IT THE 'DECK'
    greeting 
    play!(@game.deck)
  end

  def greeting
    "Hello! Let's play with some flashcards to learn Ruby, shall we?"
  end

  def play!(deck)
    @game.deck.each do |card|
      display_card(card)
      until @game.guess?(card, get_input)
        @game.guess?(card, get_input)
      end
    end 
    "Great job, you're done with the deck!"
  end

  def get_input
    gets.chomp
  end

  def display_card(card)
    puts card.definition
  end

end

# game = Interface.new
# game.play!

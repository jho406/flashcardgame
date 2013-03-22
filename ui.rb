#stuff
class Interface
  attr_accessor 

  def initialize(deck)
    @game = Game.new(deck) ## FEED IT THE 'DECK'
    greeting 
    play!(deck)
  end

  def greeting
    "Hello! Let's play with some flashcards to learn Ruby, shall we?"
  end

  def play!(deck)
    deck.each do |card|
      display_card(card)
      if @game.guess?(card, get_input)
        p "correct"
        next
      end
      if
        p "wrong"
        @game.guess?(card, get_input)
      end
    end    # continue through loop
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


class Interface
  MESSAGES = {
    :greeting => "Hello! Let's play with some flashcards to learn Ruby, shall we?",
    :finish => "Great job, you're done with the deck!"
  }
  def initialize(game)
    @game = game
    greeting 
    #play!(@game.deck)
  end

  def greeting
    MESSAGES[:greeting]
  end

  def play!
    @game.deck.each do |card|
      display_card(card)
      until @game.guess?(card, get_input)
        @game.guess?(card, get_input)
      end
    end 
    puts MESSAGES[:finish]
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

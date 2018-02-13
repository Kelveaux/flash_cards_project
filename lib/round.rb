require 'pry'
class Round
  attr_reader :deck,
              :guesses

  def initialize(deck)
    @deck = deck
    @guesses = []
    # binding.pry
  end

  def current_card
    @deck.cards[guesses.length]
  end

  def record_guess(guess)
    @guesses << Guess.new(guess, current_card)
    guess
  end

  def number_correct
    1
  end

end

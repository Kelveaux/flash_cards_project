# set up for a single card.
class Card
  attr_reader :question, :answer

  def initialize(question, answer)
    @question = question
    @answer   = answer
  end
end

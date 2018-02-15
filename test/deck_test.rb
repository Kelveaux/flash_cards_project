require 'minitest/autorun'
require 'minitest/pride'
require './lib/flash_cards'
require './lib/guess'
require './lib/deck'

class DeckTest < Minitest::Test
  def setup
    @card1 = Card.new('What is the capital of Alaska?', 'Juneau')
    @card2 = Card.new('The Viking spacecraft sent back to Earth photographs and
                      reports about the surface of which planet?', 'Mars')
    @card3 = Card.new('Describe in words the exact direction that is 697.5°
                      clockwise from due north?', 'North north west')
    @deck = Deck.new([@card1, @card2, @card3])
  end

  def test_it_exists
    assert_instance_of Deck, @deck
  end

  def test_it_can_store_a_deck
    assert_equal @deck.cards, [@card1, @card2, @card3]
    assert_equal 3, @deck.count
  end
end
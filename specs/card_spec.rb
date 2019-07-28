require('minitest/autorun')
require('minitest/rg')
require_relative('../card_game.rb')
require_relative('../card.rb')


class CardTest < Minitest::Test


def setup

     @game = CardGame.new()
     @card1 = Card.new("Clovers", 1)
     @card2 = Card.new("Tiles", 11)
     @card3 = Card.new("Hearts", 8)
     @card4 = Card.new("Pikes", 4)
end



  def test_get_card_suit
    assert_equal("Clovers",@card1.suit)
  end

  def test_get_card_value
    assert_equal(11,@card2.value)
  end

  def test_card_is_ace__negative
    assert_equal(false,@game.checkforAce(@card3))
  end

  def test_card_is_ace__positive
    assert_equal(true,@game.checkforAce(@card1))
  end

  def test_highest_card
    assert_equal(@card2,@game.highest_card(@card2,@card3))
  end

  def test_cards_total
    assert_equal("You have a total of 24",@game.cards_total([@card1,@card2,@card3,@card4]))
  end


end

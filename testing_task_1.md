### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card) ### maybe we should use "==" instead of "=" to test for equality
    if card.value = 1
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) ### we should have "def" instead of "dif", and a comma "," between the 2 parameters
  if card1.value > card2.value
    return card                  ### we should specify which card should be returned
  else
    return card2
  end
end
end                                ### extra end that is not needed

def self.cards_total(cards)         ###this does not seem to be correct; the method should refer to a class
  total                   ### total = 0       
  for card in cards
    total += card.value               ### should there be cards[:value]?
    return "You have a total of" + total    ###maybe string interpolation instead of concatenation
  end
end

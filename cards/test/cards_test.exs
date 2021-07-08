defmodule CardsTest do
  use ExUnit.Case
 alias Cards

  test "a card has a header" do
    card = Cards.new("card1")
    assert card.header == "card1"
  end

  test "Cards.stack() is a list of cards" do
    a = Cards.new("Hello I am the first card!")
    b = Cards.new("Hello I am the second card!")
    c = Cards.new("Hello I am the third card!")
    stack = Cards.stack([a,b,c])
    assert stack.cards == [a,b,c]
  end

  test "draw a card" do
    #given
    a = Cards.new("Hello I am the first card!")
    b = Cards.new("Hello I am the second card!")
    c = Cards.new("Hello I am the third card!")
    stack = Cards.stack([a,b,c])

    #then
    card = Cards.draw(stack)
    assert Enum.member?(stack.cards, card)
  end
end

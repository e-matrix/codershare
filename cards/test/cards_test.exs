defmodule CardsTest do
  use ExUnit.Case
 alias Cards

  test "a card has a header" do
    card = Cards.new("card1")
    assert card.header == "card1"
  end
end

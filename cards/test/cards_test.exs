defmodule CardsTest do
  use ExUnit.Case
 alias Cards

  test "a card as question" do
    card = Cards.new()
    assert card.question == nil
  end
end

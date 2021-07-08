defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "a card as question" do
    card = Cards.new()
    assert Cards.question == nil
  end
end

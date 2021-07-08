defmodule Cards do

  def new(header) do
    %{header: header}
  end

  def stack(cards) do
    %{cards: cards}
  end

  def draw(stack) do
    card = Enum.random(stack.cards)
  end
end

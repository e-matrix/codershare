defmodule Greeter do
  def hello(name \\ "World") 
  def hello(%{name: name}) do
    "Hello, #{name}!"
  end

  def hello(name) do
    "Hello, #{name}!"
  end
end

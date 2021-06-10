defmodule GreeterTest do
  use ExUnit.Case
  doctest Greeter

  test "greets the world" do
    assert Greeter.hello("World") == "Hello, World!"
  end

  test "greets a person" do
    assert Greeter.hello("Anna") == "Hello, Anna!"
  end
end

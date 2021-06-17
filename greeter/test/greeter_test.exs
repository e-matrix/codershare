defmodule GreeterTest do
  use ExUnit.Case
  doctest Greeter

  test "hello world if no name is given" do
    assert Greeter.hello() == "Hello, World!"
  end

  test "hello name if just one name is given" do
    assert Greeter.hello("Anna") == "Hello, Anna!"
  end

  test "greet a known person" do
    bob = %{name: "Bob"}
    alice = %{name: "Alice"}
    assert Greeter.hello(bob) == "Hello, Bob!"
    assert Greeter.hello(alice) == "Hello, Alice!"

  end
end

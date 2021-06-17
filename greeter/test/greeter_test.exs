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

  test "person has an age" do
   hamza = %{age: 32, name: "Hamza"}
   andi = %{age: 57, name: "Andi"}
   assert "My name is Hamza. I'm 32." == Greeter.hello(hamza)
   assert "My name is Andi. I'm 57." == Greeter.hello(andi)
   end
end

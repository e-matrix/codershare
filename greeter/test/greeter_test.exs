defmodule GreeterTest do
  use ExUnit.Case
  doctest Greeter

  test ".hello/0 -> Hello, World!" do
    assert Greeter.hello() == "Hello, World!"
  end

  test ".hello/1 with a single string as param -> Hello, NAME!" do
    assert Greeter.hello("Anna") == "Hello, Anna!"
  end

  test ".hello/1 with %{name: name} -> Hello, NAME!" do
    bob = %{name: "Bob"}
    alice = %{name: "Alice"}
    assert Greeter.hello(bob) == "Hello, Bob!"
    assert Greeter.hello(alice) == "Hello, Alice!"
  end

  test ".hello/1 with %{name: n, age: a} -> My name is n. I'm a." do
    hamza = %{age: 32, name: "Hamza"}
    andi = %{age: 57, name: "Andi"}
    assert "My name is Hamza. I'm 32." == Greeter.hello(hamza)
    assert "My name is Andi. I'm 57." == Greeter.hello(andi)
  end
end

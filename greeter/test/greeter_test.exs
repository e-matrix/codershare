defmodule GreeterTest do
  use ExUnit.Case
  doctest Greeter

  describe "Without parameters" do
    test ".hello/0 -> Hello, World!" do
      assert Greeter.hello() == "Hello, World!"
    end
  end

  describe "With a single string parameter" do
    test ".hello/1 with a single string as param -> Hello, NAME!" do
      assert Greeter.hello("Anna") == "Hello, Anna!"
    end
  end

  describe "With a single Map as parameter" do
    test ".hello/1 with %{name: name} -> Hello, NAME!" do
      # Given
      bob = %{name: "Bob"}
      alice = %{name: "Alice"}

      # Then
      assert Greeter.hello(bob) == "Hello, Bob!"
      assert Greeter.hello(alice) == "Hello, Alice!"
    end

    test ".hello/1 with %{name: n, age: a} -> My name is n. I'm a." do
      # Given
      hamza = %{age: 32, name: "Hamza"}
      andi = %{age: 57, name: "Andi"}

      # Then
      assert "My name is Hamza. I'm 32." == Greeter.hello(hamza)
      assert "My name is Andi. I'm 57." == Greeter.hello(andi)
    end
  end

  describe "With a list of people" do
    test ".sum_up_age/1" do
      # Given
      hamza = %{age: 32, name: "Hamza"}
      andi = %{age: 57, name: "Andi"}
      team = [hamza, andi]

      # Then
      assert 89 == Greeter.sum_up_age(team)
    end

    test ".avg/1" do
      hamza = %{age: 32, name: "Hamza"}
      andi = %{age: 57, name: "Andi"}
      team = [hamza, andi]

      # Then
      assert 44.5 == Greeter.avg(team)
    end
  end


end

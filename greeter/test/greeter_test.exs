defmodule GreeterTest do
  use ExUnit.Case
  doctest Greeter

  test "Hello world if no name is provided" do
    assert Greeter.hello() == "Hello, World!"
  end

  test "Informal hello if only first_name" do
    assert Greeter.hello("Anna") == "Hello, Anna!"
  end

  test "Formal greeting if first_name is a women's name" do
    assert Greeter.hello("Anna", "Wiesinger") == "Guten Tag Frau Wiesinger!"
  end

  test "formal greeting if first_name is a man's name" do
    assert Greeter.hello("Andi", "Altendorfer") == "Guten Tag Herr Altendorfer!"
    assert Greeter.hello("Hamza", "Tek") == "Guten Tag Herr Tek!"
  end
end

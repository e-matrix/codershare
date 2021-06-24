defmodule Greeter do
  def hello(name \\ "World")
  def hello(%{name: name, age: age}) do
    "My name is #{name}. I'm #{age}."
  end
  def hello(%{name: name}) do
    "Hello, #{name}!"
  end

  def hello(name) do
    "Hello, #{name}!"
  end

  def hello(first_name, last_name) do
    if first_name == "Anna" do
      "Guten Tag Frau #{last_name}!"
    else
      "Guten Tag Herr #{last_name}!"
    end
  end

  def sum_up_age(team) do
    team
    |> Enum.map(fn p -> Map.get(p,:age) end)
    |> Enum.sum()
  end

  def avg(team) do
    count = Enum.count(team)
    sum = sum_up_age(team)
    sum / count
  end
end


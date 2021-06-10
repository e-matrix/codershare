defmodule Greeter do
  def hello(name \\ "World") do
    "Hello, " <> name <> "!"
  end

  def hello(first_name, last_name) do
    if first_name == "Anna" do
      "Guten Tag Frau #{last_name}!"
    else
      "Guten Tag Herr #{last_name}!"
    end
  end
end

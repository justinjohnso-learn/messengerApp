defmodule HelloPhoenix.NameHelpers do

list = ["Ruby", "Rails", "Phoenix", "Elixir", "Unicorny", "Socket", "Pipe", "Random", "Tuple", "Refuctoring"]

def randomName do
  list |> Enum.shuffle |> Enum.take(2)
end

randomName()


end

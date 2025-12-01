defmodule Aoc do
  @moduledoc """
  Documentation for `Aoc`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Aoc.hello()
      :world

  """
  def hello do
    :world
  end

  def solve1 do
    File.stream!("priv/inputs/input1.txt")
    |> Stream.map(&String.trim/1)
    |> Enum.each(&IO.puts/1)
    
  end
end

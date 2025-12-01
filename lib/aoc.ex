defmodule Aoc do
  @moduledoc """
  Documentation for `AoC`.
  """

  @doc """
  Advent of Code 2025 in Elixir
  """
  def hello do
    :world
  end

  defp parse(line) do
    direction = String.first(line)
    distance = line |> String.slice(1..-1//1) |> String.to_integer()
    {direction, distance}
  end

  defp wrap_to_grid(position) do
    wrapped = rem(position, 100)
    if wrapped < 0, do: wrapped + 100, else: wrapped
  end

  defp update_position({direction, distance}, {position, zero_count}) do
    new_position =
      case direction do
        "L" -> position - distance
        "R" -> position + distance
      end
      |> wrap_to_grid()

    new_zero_count = if new_position == 0, do: zero_count + 1, else: zero_count

    {new_position, new_zero_count}
  end
  
  def solve1 do
    initial_dial_position = 50
    initial_zero_counts = 0
    File.stream!("priv/inputs/input1.txt")
    |> Stream.map(&String.trim/1)
    |> Stream.map(&parse/1)
    |> Enum.reduce({initial_dial_position, initial_zero_counts}, &update_position/2)
    |> dbg

    :ok
  end
end

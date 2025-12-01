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

  defp rotate_dial_1b(count, direction, position, zero_counts \\ 0)

  defp rotate_dial_1b(0, _direction, position, zero_counts), do: {position, zero_counts}

  defp rotate_dial_1b(count, direction, position, zero_counts) do
    new_position = case direction do
      :right -> if position + 1 > 99, do: 0, else: position + 1
      :left -> if position - 1 < 0, do: 99, else: position - 1
    end

    new_zero_counts = if new_position == 0, do: zero_counts + 1, else: zero_counts

    rotate_dial_1b(count - 1, direction, new_position, new_zero_counts)
  end

  defp update_position_1b({direction, distance}, {position, zero_count}) do
    dir = if direction == "L", do: :left, else: :right
    {new_position, this_zero_count} = rotate_dial_1b(distance, dir, position)
    {new_position, zero_count + this_zero_count}
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

  def solve1b do
    initial_dial_position = 50
    initial_zero_counts = 0

    File.stream!("priv/inputs/input1.txt")
    |> Stream.map(&String.trim/1)
    |> Stream.map(&parse/1)
    |> Enum.reduce({initial_dial_position, initial_zero_counts}, &update_position_1b/2)
    |> dbg

    :ok
  end
end

defmodule AocTest do
  use ExUnit.Case
  doctest Aoc

  test "greets the world" do
    assert Aoc.hello() == :world
    # assert Aoc.solve1() == :ok
    # IO.puts("Solved the first problem (part 1)!")
    # assert Aoc.solve1b() == :ok
    # IO.puts("Solved the first problem (part 2)!")

    assert Aoc.solve2() == :ok
    IO.puts("Solved the second problem (part 1)!")
  end
end

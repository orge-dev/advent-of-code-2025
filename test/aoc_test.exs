defmodule AocTest do
  use ExUnit.Case
  doctest Aoc

  test "greets the world" do
    assert Aoc.hello() == :world
    assert Aoc.solve1() == :ok
    IO.puts "Solved the first problem!"
  end
end

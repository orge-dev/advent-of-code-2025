defmodule AocTest do
  use ExUnit.Case
  doctest Aoc

  test "greets the world" do
    assert Aoc.hello() == :world
    assert Aoc.solve1() == :ok
    assert :ok == :not_ok
    IO.puts "It worked"
  end
end

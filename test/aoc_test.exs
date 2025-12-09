defmodule AocTest do
  use ExUnit.Case
  doctest Aoc

  test "greets the world" do
    assert Aoc.hello() == :world
    # assert Aoc.solve1() == :ok
    # IO.puts("Solved the first problem (part 1)!")
    # assert Aoc.solve1b() == :ok
    # IO.puts("Solved the first problem (part 2)!")

    # assert Aoc.solve2() == :ok
    # IO.puts("Solved the second problem (part 1)!")
    # assert Aoc.solve2b() == :ok
    # IO.puts("Solved the second problem (part 2)!")

    # assert Aoc.solve3() == :ok
    # IO.puts("Solved the third problem (part 1)!")
    # assert Aoc.solve3b() == :ok
    # IO.puts("Solved the third problem (part 2)!")

    # assert Aoc.solve4() == :ok
    # IO.puts("Solved the fourth problem (part 1)!")
    # assert Aoc.solve4b() == :ok
    # IO.puts("Solved the fourth problem (part 2)!")

    assert Aoc.solve5() == :ok
    IO.puts("Solved the fifth problem (part 1)!")
    # assert Aoc.solve5b() == :ok
    # IO.puts("Solved the fifth problem (part 2)!")
  end
end

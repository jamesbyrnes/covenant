defmodule LyricGeneratorTest do
  use ExUnit.Case
  doctest LyricGenerator

  test "greets the world" do
    assert LyricGenerator.hello() == :world
  end
end

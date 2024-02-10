defmodule ElectionsTest do
  use ExUnit.Case
  doctest Elections

  test "greets the world" do
    assert Elections.hello() == :world
  end
end

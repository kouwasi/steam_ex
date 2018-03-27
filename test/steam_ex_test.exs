defmodule SteamExTest do
  use ExUnit.Case
  doctest SteamEx

  test "greets the world" do
    assert SteamEx.hello() == :world
  end
end

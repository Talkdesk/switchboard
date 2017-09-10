defmodule SwitchboardCoreTest do
  use ExUnit.Case
  doctest SwitchboardCore

  test "greets the world" do
    assert SwitchboardCore.hello() == :world
  end
end

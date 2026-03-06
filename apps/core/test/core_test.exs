defmodule CoreTest do
  use ExUnit.Case, async: true

  alias Core.Greetings

  test "greets a person" do
    assert Greetings.hello("world") == "Hello, world!"
  end
end

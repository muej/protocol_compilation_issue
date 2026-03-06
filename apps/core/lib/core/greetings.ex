defmodule Core.Greetings do
  @moduledoc """
  A tiny sample domain context.
  """

  @spec hello(String.t()) :: String.t()
  def hello(name) when is_binary(name) do
    "Hello, #{name}!"
  end
end

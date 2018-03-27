defmodule SteamEx do
  @moduledoc """
  Steam Web API Interface.
  """

  defmodule Response do
    defstruct status_code: nil, body: nil, headers: %{}
  end
end

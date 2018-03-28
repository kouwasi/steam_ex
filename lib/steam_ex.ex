defmodule SteamEx do
  @moduledoc """
  The Steam Web API Wrapper for Elixir

  The example for using report_cheat_data API.
      iex> key = "AABCCDDEEFFFFFF"
      iex> params = %{
            "steamid" => 00000000000000000,
            "appid" => ....etc
          }
      iex> SteamEx.ICheatReportingService.report_cheat_data(key, params)
      %SteamEx.Response{body: "{...}",
      headers: [{"Content-Type", "application/json"}],
      status_code: 200}

  Basically you can use functions in the form of `SteamEx.Interface.Method`
  """

  defmodule Response do
    defstruct status_code: nil, body: nil, headers: %{}
  end
end

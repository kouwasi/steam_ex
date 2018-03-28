defmodule SteamEx.ICheatReportingService do
  @moduledoc """
  This service allows your game to report cheats and cheaters to the [VAC](https://partner.steamgames.com/doc/features/anticheat#VAC) system and provides the toolset behind the [Game Bans](https://partner.steamgames.com/doc/features/anticheat#GameBans) system.

  To use this interface you must first opt in to VAC support. This can be done from the [Anti-Cheat Configuration](https://partner.steamgames.com/apps/vac/) page in the App Admin panel.

  **NOTE**: This is a Service interface, methods in this interface should be called with the `input_json` parameter.

  For more info on how to use the Steamworks Web API please see the [Web API Overview](https://partner.steamgames.com/doc/webapi_overview).
  """

  import SteamEx.API.Base
  @interface "ICheatReportingService"

  @doc """
  Reports cheat data. Only use on test account that is running the game but not in a multiplayer session.

  This is for reporting specific cheats to the VAC system. This is done by running the cheat and the game and then calling this webapi.

  | Name           | Type   | Required | Description |
  |key             | string | ✔        | Steamworks Web API user authentication key. |
  |steamid         | uint64 | ✔        | Steam ID of the user running and reporting the cheat.|
  |appid           | uint32 | ✔        | The App ID of the game.|
  |pathandfilename | string | ✔        | Path and file name of the cheat executable.|
  |webcheaturl     | string | ✔        | Web url where the cheat was found and downloaded.|
  |time_now        | uint64 | ✔        | Local system time now. 64 bit windows system time.|
  |time_started    | uint64 | ✔        | Local system time when cheat process started. ( 0 if not yet run ) 64 bit windows system time.|
  |time_stopped    | uint64 | ✔        | Local system time when cheat process stopped. ( 0 if still running ) 64 bit windows system time.|
  |cheatname       | string | ✔        | Descriptive name for the cheat.|
  |game_process_id | uint32 | ✔        | Process ID of the running game.|
  |cheat_process_id| uint32 | ✔        | Process ID of the cheat process that ran.|
  |cheat_param_1   | uint64 | ✔        | Extra cheat data.|
  |cheat_param_2   | uint64 | ✔        | Extra cheat data.|

  See other: [https://partner.steamgames.com/doc/webapi/ICheatReportingService#ReportCheatData](https://partner.steamgames.com/doc/webapi/ICheatReportingService#ReportCheatData)
  """
  def report_cheat_data(access_key, params \\ %{}, headers \\ %{}) do
    post(@interface <> "/ReportCheatData/v1/",  access_key, params, headers)
  end
end

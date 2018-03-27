defmodule SteamEx.ICheatReportingService do
  @moduledoc """
  Provides ICheatReportingService API interfaces.
  """

  import SteamEx.API.Base

  @doc """
  Reports cheat data. Only use on test account that is running the game but not in a multiplayer session.

  This is for reporting specific cheats to the VAC system. This is done by running the cheat and the game and then calling this webapi.

  ## Required params
    - key: 	Steamworks Web API user authentication key.
    - steamid: Steam ID of the user running and reporting the cheat.
    - appid: The App ID of the game.
    - pathandfilename: Path and file name of the cheat executable.
    - webcheaturl: Web url where the cheat was found and downloaded.
    - time_now: Local system time now. 64 bit windows system time.
    - time_started: Local system time when cheat process started. ( 0 if not yet run ) 64 bit windows system time.
    - time_stopped: Local system time when cheat process stopped. ( 0 if still running ) 64 bit windows system time.
    - cheatname: Descriptive name for the cheat.
    - game_process_id: Process ID of the running game.
    - cheat_process_id: Process ID of the cheat process that ran.
    - cheat_param_1: Extra cheat data.
    - cheat_param_2: Extra cheat data.

  See other: https://partner.steamgames.com/doc/webapi/ICheatReportingService#ReportCheatData
  """
  def report_cheat_data(access_key, params, headers \\ %{}) do
    post("ICheatReportingService/ReportCheatData/v1/",  access_key, params, headers)
  end
end

defmodule SteamEx.ISteamUserStats do
  @moduledoc """
  Used to access information about users.

  For more info on how to use the Steamworks Web API please see the [Web API Overview](https://partner.steamgames.com/doc/webapi_overview).
  """

  import SteamEx.API.Base
  @interface "ISteamUserStats"

  @doc """
  Retrieves the global achievement percentages for the specified app.

  This method has previous versions which are no longer officially supported. They will continue to be usable but it's highly recommended that you use the latest version.
  Change history:
    - **Version 2** - Removes element names from arrays

  | Name    | Type   | Required | Description |
  | gameid  | uint64 | ✔       | GameID to retrieve the achievement percentages for|

  See other: [https://partner.steamgames.com/doc/webapi/ISteamUserStats#GetGlobalAchievementPercentagesForApp](https://partner.steamgames.com/doc/webapi/ISteamUserStats#GetGlobalAchievementPercentagesForApp)
  """
  def get_global_achievement_percentages_for_app(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetGlobalAchievementPercentagesForApp/v2/",  access_key, params, headers)
  end

  @doc """
  Retrieves the global achievement percentages for the specified app.

  See the [Global Stats](https://partner.steamgames.com/doc/features/achievements#global_stats) documentation for more information.

  | Name      | Type   | Required | Description |
  | appid     | uint32 | ✔       | AppID that we're getting global stats for|
  | count     | uint32 | ✔       | Number of stats get data for|
  | name[0]   | string | ✔       | Names of stat to get data for|
  | startdate | uint32 |          | Start date for daily totals (unix epoch timestamp)|
  | enddate   | uint32 |          | End date for daily totals (unix epoch timestamp)|
  
  See other: [https://partner.steamgames.com/doc/webapi/ISteamUserStats#GetGlobalStatsForGame](https://partner.steamgames.com/doc/webapi/ISteamUserStats#GetGlobalStatsForGame)
  """
  def get_global_stats_for_game(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetGlobalStatsForGame/v1/",  access_key, params, headers)
  end

  @doc """
  Gets the total number of players currently active in the specified app on Steam.

  Note that this will not return players that are playing while not connected to Steam.

  | Name | Type   | Required | Description |
  | appid| uint32 | ✔       | AppID that we're getting user count for|

  See other: [https://partner.steamgames.com/doc/webapi/ISteamUserStats#GetNumberOfCurrentPlayers](https://partner.steamgames.com/doc/webapi/ISteamUserStats#GetNumberOfCurrentPlayers)
  """
  def get_number_of_current_players(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetNumberOfCurrentPlayers/v1/",  access_key, params, headers)
  end

  @doc """
  Gets the list of achievements the specified user has unlocked in an app.

  | Name    | Type   | Required | Description |
  | key     | string | ✔       | Steamworks Web API user authentication key.|
  | steamid | uint64 | ✔       | SteamID of user|
  | appid   | uint32 | ✔       | AppID to get achievements for|
  | l       | string |          | Language to return strings for|

  See other: [https://partner.steamgames.com/doc/webapi/ISteamUserStats#GetPlayerAchievements](https://partner.steamgames.com/doc/webapi/ISteamUserStats#GetPlayerAchievements)
  """
  def get_player_achievements(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetPlayerAchievements/v1/",  access_key, params, headers)
  end

  @doc """
  Gets the complete list of stats and achievements for the specified game.

  This method has previous versions which are no longer officially supported. They will continue to be usable but it's highly recommended that you use the latest version.
  Change history:
    - **Version 2** - Fixes returning the game name in XML.

  | Name    | Type   | Required | Description |
  | key     | string | ✔       | Steamworks Web API user authentication key.|
  | appid   | uint32 | ✔       | appid of game|
  | l       | string |          | localized language to return (english, french, etc.)|

  See other: [https://partner.steamgames.com/doc/webapi/ISteamUserStats#GetSchemaForGame](https://partner.steamgames.com/doc/webapi/ISteamUserStats#GetSchemaForGame)
  """
  def get_schema_for_game(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetSchemaForGame/v2/",  access_key, params, headers)
  end

  @doc """
  Gets the list of stats that the specified user has set in an app.

  This method has previous versions which are no longer officially supported. They will continue to be usable but it's highly recommended that you use the latest version.
  Change history:
    - **Version 2** - Fixes returning the game name in XML.

  | Name    | Type   | Required | Description |
  | key     | string | ✔       | Steamworks Web API user authentication key.|
  | steamid | uint64 | ✔       | 	SteamID of user|
  | appid   | uint32 | ✔       | appid of game|

  See other: [https://partner.steamgames.com/doc/webapi/ISteamUserStats#GetUserStatsForGame](https://partner.steamgames.com/doc/webapi/ISteamUserStats#GetUserStatsForGame)
  """
  def get_user_stats_for_game(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetUserStatsForGame/v2/",  access_key, params, headers)
  end
end

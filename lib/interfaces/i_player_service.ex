defmodule SteamEx.IPlayerService do
  @moduledoc """
  Provides additional methods for interacting with Steam Users.

  See [ISteamUser](https://partner.steamgames.com/doc/webapi/ISteamUser) for the primary interface.

  **NOTE:** This is a Service interface, methods in this interface should be called with the `input_json` parameter.

  For more info on how to use the Steamworks Web API please see the [Web API Overview](https://partner.steamgames.com/doc/webapi_overview).
  """

  import SteamEx.API.Base
  @interface "IPlayerService"

  @doc """
  Tracks playtime for a user when they are offline

  | Name          | Type      | Required | Description |
  | steamid       | uint64    | ✔       | The player we're asking about|
  | ticket        | string    | ✔       | The users authentication ticket.|
  | play_sessions | {message} | ✔       | The recorded play sessions.|

  See other: [https://partner.steamgames.com/doc/webapi/IPlayerService#RecordOfflinePlaytime](https://partner.steamgames.com/doc/webapi/IPlayerService#RecordOfflinePlaytime)
  """
  def record_offline_playtime(access_key, params \\ %{}, headers \\ %{}) do
    post(@interface <> "/RecordOfflinePlaytime/v1/",  access_key, params, headers)
  end

  @doc """
  Gets information about a player's recently played games

  | Name    | Type   | Required | Description |
  | key     | string | ✔       | Steamworks Web API user authentication key.|
  | steamid | uint64 | ✔       | The player we're asking about|
  | count   | uint32 | ✔       | The number of games to return (0/unset: all)|

  See other: [https://partner.steamgames.com/doc/webapi/IPlayerService#GetRecentlyPlayedGames](https://partner.steamgames.com/doc/webapi/IPlayerService#GetRecentlyPlayedGames)
  """
  def get_recently_played_games(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetRecentlyPlayedGames/v1/",  access_key, params, headers)
  end

  @doc """
  Return a list of games owned by the player

  | Name                     | Type   | Required | Description |
  | key                      | string | ✔       | Steamworks Web API user authentication key.|
  | steamid                  | uint64 | ✔       | The player we're asking about|
  | include_appinfo          | bool   | ✔       | true if we want additional details (name, icon) about each game|
  | include_played_free_games| bool   | ✔       | Free games are excluded by default. If this is set, free games the user has played will be returned.|
  | appids_filter            | uint32 | ✔       | if set, restricts result set to the passed in apps|

  See other: [https://partner.steamgames.com/doc/webapi/IPlayerService#GetOwnedGames](https://partner.steamgames.com/doc/webapi/IPlayerService#GetOwnedGames)
  """
  def get_owned_games(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetOwnedGames/v1/",  access_key, params, headers)
  end

  @doc """
  Returns the Steam Level of a user

  | Name    | Type   | Required | Description |
  | key     | string | ✔       | Steamworks Web API user authentication key.|
  | steamid | uint64 | ✔       | The player we're asking about|

  See other: [https://partner.steamgames.com/doc/webapi/IPlayerService#GetSteamLevel](https://partner.steamgames.com/doc/webapi/IPlayerService#GetSteamLevel)
  """
  def get_steam_level(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetSteamLevel/v1/",  access_key, params, headers)
  end

  @doc """
  Gets badges that are owned by a specific user

  | Name    | Type   | Required | Description |
  | key     | string | ✔       | Steamworks Web API user authentication key.|
  | steamid | uint64 | ✔       | The player we're asking about|

  See other: [https://partner.steamgames.com/doc/webapi/IPlayerService#GetBadges](https://partner.steamgames.com/doc/webapi/IPlayerService#GetBadges)
  """
  def get_badges(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetBadges/v1/",  access_key, params, headers)
  end

  @doc """
  Gets all the quests needed to get the specified badge, and which are completed

  | Name    | Type   | Required | Description |
  | key     | string | ✔       | Steamworks Web API user authentication key.|
  | steamid | uint64 | ✔       | The player we're asking about|
  | badgeid | int32  | ✔       | The badge we're asking about|

  See other: [https://partner.steamgames.com/doc/webapi/IPlayerService#GetCommunityBadgeProgress](https://partner.steamgames.com/doc/webapi/IPlayrService#GetCommunityBadgeProgress)
  """
  def get_community_badge_progress(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetCommunityBadgeProgress/v1/",  access_key, params, headers)
  end

  @doc """
  Returns valid lender SteamID if game currently played is borrowed

  | Name          | Type   | Required | Description |
  | key           | string | ✔       | Steamworks Web API user authentication key.|
  | steamid       | uint64 | ✔       | The player we're asking about|
  | appid_playing | uint32 | ✔       | The game player is currently playing|

  See other: [https://partner.steamgames.com/doc/webapi/IPlayerService#IsPlayingSharedGame](https://partner.steamgames.com/doc/webapi/IPlayrService#IsPlayingSharedGame)
  """
  def is_playing_shared_game(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/IsPlayingSharedGame/v1/",  access_key, params, headers)
  end
end

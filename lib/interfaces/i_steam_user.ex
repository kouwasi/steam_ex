defmodule SteamEx.ISteamUser do
  @moduledoc """
  Used to access information and interact with users.

  See [IPlayerService](https://partner.steamgames.com/doc/webapi/IPlayerService) for additional methods.

  For more info on how to use the Steamworks Web API please see the [Web API Overview](https://partner.steamgames.com/doc/webapi_overview).
  """

  import SteamEx.API.Base
  @interface "ISteamUser"

  @doc """
  | Name         | Type   | Required | Description |
  | key          | string | ✔       | Steamworks Web API user authentication key.|
  | steamid      | uint64 | ✔       | SteamID of user|
  | relationship | string |          | relationship type (ex: friend)|

  See other: [https://partner.steamgames.com/doc/webapi/ISteamUser#GetFriendList](https://partner.steamgames.com/doc/webapi/ISteamUser#GetFriendList)
  """
  def get_friend_list(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetFriendList/v1/",  access_key, params, headers)
  end

  @doc """
  | Name         | Type   | Required | Description |
  | key          | string | ✔       | Steamworks Web API user authentication key.|
  | steamids     | string | ✔       | Comma-delimited list of SteamIDs|

  See other: [https://partner.steamgames.com/doc/webapi/ISteamUser#GetPlayerBans](https://partner.steamgames.com/doc/webapi/ISteamUser#GetPlayerBans)
  """
  def get_player_bans(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetPlayerBans/v1/",  access_key, params, headers)
  end

  @doc """
  | Name         | Type   | Required | Description |
  | key          | string | ✔       | Steamworks Web API user authentication key.|
  | steamids     | string | ✔       | Comma-delimited list of SteamIDs (max: 100)|

  See other: [https://partner.steamgames.com/doc/webapi/ISteamUser#GetPlayerSummaries](https://partner.steamgames.com/doc/webapi/ISteamUser#GetPlayerSummaries)
  """
  def get_player_summaries(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetPlayerSummaries/v2/",  access_key, params, headers)
  end

  @doc """
  | Name         | Type   | Required | Description |
  | key          | string | ✔       | Steamworks Web API user authentication key.|
  | steamid      | uint64 | ✔       | SteamID of user|

  See other: [https://partner.steamgames.com/doc/webapi/ISteamUser#GetUserGroupList](https://partner.steamgames.com/doc/webapi/ISteamUser#GetUserGroupList)
  """
  def get_user_group_list(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetUserGroupList/v1/",  access_key, params, headers)
  end

  @doc """
  | Name         | Type   | Required | Description |
  | key          | string | ✔       | Steamworks Web API user authentication key.|
  | vanityurl    | string | ✔       | The vanity URL to get a SteamID for|
  | url_type     | int32  |          | 	The type of vanity URL. 1 (default): Individual profile, 2: Group, 3: Official game group|

  See other: [https://partner.steamgames.com/doc/webapi/ISteamUser#ResolveVanityURL](https://partner.steamgames.com/doc/webapi/ISteamUser#ResolveVanityURL)
  """
  def resolve_vanity_url(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/ResolveVanityURL/v1/",  access_key, params, headers)
  end
end

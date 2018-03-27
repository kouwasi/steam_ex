defmodule SteamEx.IGameServersService do
  @moduledoc """
  Provides IGameServersService API interfaces.
  """

  import SteamEx.API.Base

  @doc """
  Gets a list of game server accounts with their logon tokens

  | Name | Type   | Required | Description |
  | key  | string | ✔       | Steamworks Web API user authentication key.|

  See other: [https://partner.steamgames.com/doc/webapi/IGameServersService#GetAccountList](https://partner.steamgames.com/doc/webapi/IGameServersService#GetAccountList)
  """
  def get_account_list(access_key, params, headers \\ %{}) do
    get("IGameServersService/GetAccountList/v1",  access_key, params, headers)
  end

  @doc """
  Gets a list of game servers (new master query server) 

  | Name | Type   | Required | Description |
  | key  | string | ✔       | Steamworks Web API user authentication key.|

  See other: [https://developer.valvesoftware.com/wiki/Talk:Master_Server_Query_Protocol](https://developer.valvesoftware.com/wiki/Talk:Master_Server_Query_Protocol)
  """
  def get_server_list(access_key, params, headers \\ %{}) do
    get("IGameServersService/GetServerList/v1/",  access_key, params, headers)
  end

  @doc """
  Creates a persistent game server account

  | Name | Type   | Required | Description |
  | key  | string | ✔       | Steamworks Web API user authentication key.|
  | appid| uint32 | ✔       | The app to use the account for|
  | memo | string | ✔       | The memo to set on the new account|

  See other: [https://partner.steamgames.com/doc/webapi/IGameServersService#CreateAccount](https://partner.steamgames.com/doc/webapi/IGameServersService#CreateAccount)
  """
  def create_account(access_key, params, headers \\ %{}) do
    post("IGameServersService/CreateAccount/v1", access_key, params, headers)
  end

  @doc """
  This method changes the memo associated with the game server account. Memos do not affect the account in any way. The memo shows up in the GetAccountList response and serves only as a reminder of what the account is used for.

  | Name   | Type   | Required | Description |
  | key    | string | ✔       | Steamworks Web API user authentication key.|
  | steamid| uint64 | ✔       | The SteamID of the game server to set the memo on|
  | memo   | string | ✔       | The memo to set on the new account|

  See other: [https://partner.steamgames.com/doc/webapi/IGameServersService#SetMemo](https://partner.steamgames.com/doc/webapi/IGameServersService#SetMemo)
  """
  def set_memo(access_key, params, headers \\ %{}) do
    post("IGameServersService/SetMemo/v1", access_key, params, headers)
  end

  @doc """
  Generates a new login token for the specified game server

  | Name   | Type   | Required | Description |
  | key    | string | ✔       | Steamworks Web API user authentication key.|
  | steamid| uint64 | ✔       | The SteamID of the game server to reset the login token of|
    
  See other: [https://partner.steamgames.com/doc/webapi/IGameServersService#ResetLoginToken](https://partner.steamgames.com/doc/webapi/IGameServersService#ResetLoginToken)
  """
  def reset_login_token(access_key, params, headers \\ %{}) do
    post("IGameServersService/ResetLoginToken/v1", access_key, params, headers)
  end

  @doc """
  Deletes a persistent game server account

  | Name   | Type   | Required | Description |
  | key    | string | ✔       | Steamworks Web API user authentication key.|
  | steamid| uint64 | ✔       | The SteamID of the game server account to delete|

  See other: [https://partner.steamgames.com/doc/webapi/IGameServersService#DeleteAccount](https://partner.steamgames.com/doc/webapi/IGameServersService#DeleteAccount)
  """
  def delete_account(access_key, params, headers \\ %{}) do
    post("IGameServersService/DeleteAccount/v1", access_key, params, headers)
  end

  @doc """
  Gets public information about a given game server account

  | Name   | Type   | Required | Description |
  | key    | string | ✔       | Steamworks Web API user authentication key.|
  | steamid| uint64 | ✔       | The SteamID of the game server to get info on|

  See other: [https://partner.steamgames.com/doc/webapi/IGameServersService#GetAccountPublicInfo](https://partner.steamgames.com/doc/webapi/IGameServersService#GetAccountPublicInfo)
  """
  def get_account_public_info(access_key, params, headers \\ %{}) do
    get("IGameServersService/GetAccountPublicInfo/v1", access_key, params, headers)
  end

  @doc """
  Queries the status of the specified token, which must be owned by you

  | Name       | Type   | Required | Description |
  | key        | string | ✔       | Steamworks Web API user authentication key.|
  | login_token| string | ✔       | 	Login token to query|

  See other: [https://partner.steamgames.com/doc/webapi/IGameServersService#QueryLoginToken](https://partner.steamgames.com/doc/webapi/IGameServersService#QueryLoginToken)
  """
  def query_login_token(access_key, params, headers \\ %{}) do
    get("IGameServersService/QueryLoginToken/v1", access_key, params, headers)
  end

  @doc """
  Gets a list of server SteamIDs given a list of IPs

  | Name       | Type   | Required | Description |
  | key        | string | ✔       | Steamworks Web API user authentication key.|
  | server_ips | string | ✔       | |

  See other: [https://partner.steamgames.com/doc/webapi/IGameServersService#GetServerSteamIDsByIP](https://partner.steamgames.com/doc/webapi/IGameServersService#GetServerSteamIDsByIP)
  """
  def get_server_steam_ids_by_ip(access_key, params, headers \\ %{}) do
    get("IGameServersService/GetServerSteamIDsByIP/v1", access_key, params, headers)
  end

  @doc """
  Gets a list of server IP addresses given a list of SteamIDs

  | Name            | Type   | Required | Description |
  | key             | string | ✔       | Steamworks Web API user authentication key.|
  | server_steamids | string | ✔       | |

  See other: [https://partner.steamgames.com/doc/webapi/IGameServersService#GetServerIPsBySteamID](https://partner.steamgames.com/doc/webapi/IGameServersService#GetServerIPsBySteamID)
  """
  def get_server_ips_by_steam_id(access_key, params, headers \\ %{}) do
    get("IGameServersService/GetServerIPsBySteamID/v1", access_key, params, headers)
  end
end

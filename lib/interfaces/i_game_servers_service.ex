defmodule SteamEx.IGameServersService do
  @moduledoc """
  Provides IGameServersService API interfaces.
  """

  import SteamEx.API.Base

  @doc """
  Gets a list of game server accounts with their logon tokens
  """
  def get_account_list(access_key, params \\ %{}, headers \\ %{}) do
    get("IGameServersService/GetAccountList/v1",  access_key, params, headers)
  end

  @doc """
  Gets a list of game servers (new master query server) 
  """
  def get_server_list(access_key, params \\ %{}, headers \\ %{}) do
    get("IGameServersService/GetServerList/v1/",  access_key, params, headers)
  end

  @doc """
  Creates a persistent game server account
  """
  def create_account(access_key, params \\ %{}, headers \\ %{}) do
    post("IGameServersService/CreateAccount/v1", access_key, params, headers)
  end

  @doc """
  This method changes the memo associated with the game server account. Memos do not affect the account in any way. The memo shows up in the GetAccountList response and serves only as a reminder of what the account is used for.
  """
  def set_memo(access_key, params \\ %{}, headers \\ %{}) do
    post("IGameServersService/SetMemo/v1", access_key, params, headers)
  end

  @doc """
  Generates a new login token for the specified game server
  """
  def reset_login_token(access_key, params \\ %{}, headers \\ %{}) do
    post("IGameServersService/ResetLoginToken/v1", access_key, params, headers)
  end

  @doc """
  Deletes a persistent game server account
  """
  def delete_account(access_key, params \\ %{}, headers \\ %{}) do
    post("IGameServersService/DeleteAccount/v1", access_key, params, headers)
  end

  @doc """
  Gets public information about a given game server account
  """
  def get_account_public_info(access_key, params \\ %{}, headers \\ %{}) do
    get("IGameServersService/GetAccountPublicInfo/v1", access_key, params, headers)
  end

  @doc """
  Queries the status of the specified token, which must be owned by you
  """
  def query_login_token(access_key, params \\ %{}, headers \\ %{}) do
    get("IGameServersService/QueryLoginToken/v1", access_key, params, headers)
  end

  @doc """
  Gets a list of server SteamIDs given a list of IPs
  """
  def get_server_steam_ids_by_ip(access_key, params \\ %{}, headers \\ %{}) do
    get("IGameServersService/GetServerSteamIDsByIP/v1", access_key, params, headers)
  end

  @doc """
  Gets a list of server IP addresses given a list of SteamIDs
  """
  def get_server_ips_by_steam_id(access_key, params \\ %{}, headers \\ %{}) do
    get("IGameServersService/GetServerIPsBySteamID/v1", access_key, params, headers)
  end
end

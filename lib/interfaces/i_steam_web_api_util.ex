defmodule SteamEx.ISteamWebAPIUtil do
  @moduledoc """
  Provides miscellaneous Web API related functionality through utility methods.

  For more info on how to use the Steamworks Web API please see the [Web API Overview](https://partner.steamgames.com/doc/webapi_overview).
  """

  import SteamEx.API.Base
  @interface "ISteamWebAPIUtil"

  @doc """
  See other: [https://partner.steamgames.com/doc/webapi/ISteamWebAPIUtil#GetServerInfo](https://partner.steamgames.com/doc/webapi/ISteamWebAPIUtil#GetServerInfo)
  """
  def get_server_info(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetServerInfo/v1/",  access_key, params, headers)
  end

  @doc """
  Gets the list of supported API calls. This is used to build this documentation.

  | Name | Type   | Required | Description |
  | key  | string |          | The Steamworks Web API authentication key which is required to receive restricted methods.|
  
  See other: [https://partner.steamgames.com/doc/webapi/ISteamWebAPIUtil#GetSupportedAPIList](https://partner.steamgames.com/doc/webapi/ISteamWebAPIUtil#GetSupportedAPIList)
  """
  def get_supported_api_list(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetSupportedAPIList/v1/",  access_key, params, headers)
  end
end

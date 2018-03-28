defmodule SteamEx.ISteamApps do
  @moduledoc """
  Used to access data about applications on Steam.

  For more info on how to use the Steamworks Web API please see the [Web API Overview](https://partner.steamgames.com/doc/webapi_overview).
  """

  import SteamEx.API.Base
  @interface "ISteamApps"

  @doc """
  Gets the complete list of public apps.

  This call has no additional parameters.

  This method has previous versions which are no longer officially supported. They will continue to be usable but it's highly recommended that you use the latest version.
  Change history:
    - **Version 2** - Removed the redundant "app" field.

  Response:
    - `applist`
      - `apps` - The list containing the applications.
        - `appid` - uint32 - App ID of this application.
        - `name` - string - The name of this application.

  See other: [https://partner.steamgames.com/doc/webapi/ISteamApps#GetAppList](https://partner.steamgames.com/doc/webapi/ISteamApps#GetAppList)
  """
  def get_app_list(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetAppList/v2/",  access_key, params, headers)
  end

  @doc """
  | Name | Type   | Required | Description |
  | addr | string | ✔       | IP or IP:queryport to list|

  See other: [https://partner.steamgames.com/doc/webapi/ISteamApps#GetServersAtAddress](https://partner.steamgames.com/doc/webapi/ISteamApps#GetServersAtAddress)
  """
  def get_servers_at_address(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetServersAtAddress/v1/",  access_key, params, headers)
  end

  @doc """
  | Name    | Type   | Required | Description |
  | appid   | uint32 | ✔       | AppID of game|
  | version | uint32 | ✔       | The installed version of the game|

  See other: [https://partner.steamgames.com/doc/webapi/ISteamApps#UpToDateCheck](https://partner.steamgames.com/doc/webapi/ISteamApps#UpToDateCheck)
  """
  def up_to_date_check(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/UpToDateCheck/v1/",  access_key, params, headers)
  end
end

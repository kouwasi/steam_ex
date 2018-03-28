defmodule SteamEx.ISteamEconomy do
  @moduledoc """
  A secondary interface to interact with the [Steam Economy](https://partner.steamgames.com/doc/features/inventory/economy).
  See also: [IGameInventory](https://partner.steamgames.com/doc/webapi/IGameInventory).

  For more info on how to use the Steamworks Web API please see the [Web API Overview](https://partner.steamgames.com/doc/webapi_overview).
  """

  import SteamEx.API.Base
  @interface "ISteamEconomy"

  @doc """
  | Name        | Type   | Required | Description |
  | key         | string | ✔       | Steamworks Web API user authentication key.|
  | appid       | uint32 | ✔       | Must be a steam economy app.|
  | language    | string |          | The user's local language|
  | class_count | uint32 | ✔       | Number of classes requested. Must be at least one.|
  | classid0    | uint64 | ✔       | Class ID of the nth class.|
  | instanceid0 | uint64 |          | Instance ID of the nth class.|

  See other: [https://partner.steamgames.com/doc/webapi/ISteamEconomy#GetAssetClassInfo](https://partner.steamgames.com/doc/webapi/ISteamEconomy#GetAssetClassInfo)
  """
  def get_asset_class_info(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetAssetClassInfo/v1/",  access_key, params, headers)
  end

  @doc """
  Returns prices and categories for items that users are able to purchase.

  | Name        | Type   | Required | Description |
  | key         | string | ✔       | Steamworks Web API user authentication key.|
  | appid       | uint32 | ✔       | Must be a steam economy app.|
  | currency    | string |          | The currency to filter for|
  | language    | string |          | The user's local language|

  See other: [https://partner.steamgames.com/doc/webapi/ISteamEconomy#GetAssetPrices](https://partner.steamgames.com/doc/webapi/ISteamEconomy#GetAssetPrices)
  """
  def get_asset_prices(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetAssetPrices/v1/",  access_key, params, headers)
  end
end

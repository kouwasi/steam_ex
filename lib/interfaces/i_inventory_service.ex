defmodule SteamEx.IInventoryService do
  @moduledoc """
  This is the interface used to access the [Steam Inventory Service](https://partner.steamgames.com/doc/features/inventory).

  **NOTE:** This is a Service interface, methods in this interface should be called with the `input_json` parameter.

  For more info on how to use the Steamworks Web API please see the [Web API Overview](https://partner.steamgames.com/doc/webapi_overview).
  """

  import SteamEx.API.Base
  @interface "IInventoryService"

  @doc """
  Get the Inventory Service price sheet

  | Name       | Type   | Required | Description |
  | key        | string | ✔       | Steamworks Web API user authentication key.|
  | ecurrency  | int32  | ✔       | |

  See other: [https://partner.steamgames.com/doc/webapi/IInventoryService#GetPriceSheet](https://partner.steamgames.com/doc/webapi/IInventoryService#GetPriceSheet)
  """
  def get_price_sheet(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetPriceSheet/v1/",  access_key, params, headers)
  end
end

defmodule SteamEx.IEconService do
  @moduledoc """
  Additional Steam Economy methods that provide access to Steam Trading.

  **NOTE:** This is a Service interface, methods in this interface should be called with the `input_json` parameter.

  For more info on how to use the Steamworks Web API please see the [Web API Overview](https://partner.steamgames.com/doc/webapi_overview).
  """

  import SteamEx.API.Base
  @interface "IEconService"

  @doc """
  Gets a history of trades

  | Name                | Type   | Required | Description |
  | key                 | string | ✔       | Steamworks Web API user authentication key.|
  | max_trades          | uint32 | ✔       | The number of trades to return information for|
  | start_after_time    | uint32 | ✔       | The time of the last trade shown on the previous page of results, or the time of the first trade if navigating back|
  | start_after_tradeid | uint64 | ✔       | The tradeid shown on the previous page of results, or the ID of the first trade if navigating back|
  | navigating_back     | bool   | ✔       | The user wants the previous page of results, so return the previous max_trades trades before the start time and ID|
  | get_descriptions    | bool   | ✔       | If set, the item display data for the items included in the returned trades will also be returned|
  | language            | string | ✔       | The language to use when loading item display data
  | include_failed      | bool   | ✔       | |
  | include_total       | bool   | ✔       | If set, the total number of trades the account has participated in will be included in the response|

  See other: [https://partner.steamgames.com/doc/webapi/IEconService#GetTradeHistory](https://partner.steamgames.com/doc/webapi/IEconService#GetTradeHistory)
  """
  def get_trade_history(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetTradeHistory/v1/",  access_key, params, headers)
  end

  @doc """
  Get a list of sent or received trade offers

  | Name                   | Type   | Required | Description |
  | key                    | string | ✔       | Steamworks Web API user authentication key.|
  | get_sent_offers        | bool   | ✔       | Request the list of sent offers.|
  | get_received_offers    | bool   | ✔       | Request the list of received offers.|
  | get_descriptions       | bool   | ✔       | If set, the item display data for the items included in the returned trade offers will also be returned.|
  | language               | string | ✔       | The language to use when loading item display data.|
  | active_only            | bool   | ✔       | Indicates we should only return offers which are still active, or offers that have changed in state since the time_historical_cutoff|
  | historical_only        | bool   | ✔       | Indicates we should only return offers which are not active.|
  | time_historical_cutoff | uint32 | ✔       | When active_only is set, offers updated since this time will also be returned

  See other: [https://partner.steamgames.com/doc/webapi/IEconService#GetTradeOffers](https://partner.steamgames.com/doc/webapi/IEconService#GetTradeOffers)
  """
  def get_trade_offers(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetTradeOffers/v1/",  access_key, params, headers)
  end

  @doc """
  Get counts of pending and new trade offers

  | Name            | Type   | Required | Description |
  | key             | string | ✔       | Steamworks Web API user authentication key.|
  | time_last_visit | uint32 | ✔       | The time the user last visited. If not passed, will use the time the user last visited the trade offer page.|

  See other: [https://partner.steamgames.com/doc/webapi/IEconService#GetTradeOffersSummary](https://partner.steamgames.com/doc/webapi/IEconService#GetTradeOffersSummary)
  """
  def get_trade_offers_summary(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetTradeOffersSummary/v1/",  access_key, params, headers)
  end

  @doc """
  Decline a trade offer someone sent to us

  | Name         | Type   | Required | Description |
  | key          | string | ✔       | Steamworks Web API user authentication key.|
  | tradeofferid | uint64 | ✔       | |

  See other: [https://partner.steamgames.com/doc/webapi/IEconService#DeclineTradeOffer](https://partner.steamgames.com/doc/webapi/IEconService#DeclineTradeOffer)
  """
  def decline_trade_offer(access_key, params \\ %{}, headers \\ %{}) do
    post(@interface <> "/DeclineTradeOffer/v1/",  access_key, params, headers)
  end

  @doc """
  Cancel a trade offer we sent

  | Name         | Type   | Required | Description |
  | key          | string | ✔       | Steamworks Web API user authentication key.|
  | tradeofferid | uint64 | ✔       | |

  See other: [https://partner.steamgames.com/doc/webapi/IEconService#CancelTradeOffer](https://partner.steamgames.com/doc/webapi/IEconService#CancelTradeOffer)
  """
  def cancel_trade_offer(access_key, params \\ %{}, headers \\ %{}) do
    post(@interface <> "/CancelTradeOffer/v1/",  access_key, params, headers)
  end
end

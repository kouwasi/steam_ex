defmodule SteamEx.ISteamRemoteStorage do
  @moduledoc """
  Primary interface for interacting with the Steam Workshop and User Generated Content (UGC).

  See [IPublishedFileService](https://partner.steamgames.com/doc/webapi/IPublishedFileService), [IWorkshopService](https://partner.steamgames.com/doc/webapi/IWorkshopService), [ISteamPublishedItemSearch](https://partner.steamgames.com/doc/webapi/ISteamPublishedItemSearch), and [ISteamPublishedItemVoting](https://partner.steamgames.com/doc/webapi/ISteamPublishedItemVoting) for additional Workshop and UGC related methods.

  For more info on how to use the Steamworks Web API please see the [Web API Overview](https://partner.steamgames.com/doc/webapi_overview).
  """

  import SteamEx.API.Base
  @interface "ISteamRemoteStorage"

  @doc """
  | Name                | Type   | Required | Description |
  | collectioncount     | uint32 | ✔       | Number of collections being requested|
  | publishedfileids[0] | uint64 | ✔       | collection ids to get the details for|

  See other: [https://partner.steamgames.com/doc/webapi/ISteamRemoteStorage#GetCollectionDetails](https://partner.steamgames.com/doc/webapi/ISteamRemoteStorage#GetCollectionDetails)
  """
  def get_collection_details(access_key, params \\ %{}, headers \\ %{}) do
    post(@interface <> "/GetCollectionDetails/v1/",  access_key, params, headers)
  end

  @doc """
  | Name                | Type   | Required | Description |
  | itemcount           | uint32 | ✔       | Number of collections being requested|
  | publishedfileids[0] | uint64 | ✔       | published file id to look up|

  See other: [https://partner.steamgames.com/doc/webapi/ISteamRemoteStorage#GetPublishedFileDetails](https://partner.steamgames.com/doc/webapi/ISteamRemoteStorage#GetPublishedFileDetails)
  """
  def get_published_file_details(access_key, params \\ %{}, headers \\ %{}) do
    post(@interface <> "/GetPublishedFileDetails/v1/",  access_key, params, headers)
  end

  @doc """
  | Name             | Type   | Required | Description |
  | key     | string | ✔     | Steamworks Web API user authentication key.|
  | steamid | uint64 |        | If specified, only returns details if the file is owned by the SteamID specified|
  | ugcid   | uint64 | ✔     | ID of UGC file to get info for|
  | appid   | uint32 | ✔     | appID of product|

  See other: [https://partner.steamgames.com/doc/webapi/ISteamRemoteStorage#GetUGCFileDetails](https://partner.steamgames.com/doc/webapi/ISteamRemoteStorage#GetUGCFileDetails)
  """
  def get_ugc_file_details(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetUGCFileDetails/v1/",  access_key, params, headers)
  end
end

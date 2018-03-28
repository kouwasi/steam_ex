defmodule SteamEx.IPublishedFileService do
  @moduledoc """
  Provides additional methods for interacting with Steam Workshop items.

  See [ISteamRemoteStorage](https://partner.steamgames.com/doc/webapi/ISteamRemoteStorage) for the primary interface.

  **NOTE:** This is a Service interface, methods in this interface should be called with the `input_json` parameter.

  For more info on how to use the Steamworks Web API please see the [Web API Overview](https://partner.steamgames.com/doc/webapi_overview).
  """

  import SteamEx.API.Base
  @interface "IPublishedFileService"

  @doc """
  Performs a search query for published files

  | Name                     | Type     | Required | Description |
  | key                      | string   | ✔       | Steamworks Web API user authentication key.|
  | query_type               | uint32   | ✔       | enumeration EPublishedFileQueryType in clientenums.h|
  | page                     | uint32   | ✔       | Current page|
  | numperpage               | uint32   |          | 	(Optional) The number of results, per page to return.|
  | creator_appid            | uint32   | ✔       | App that created the files|
  | appid                    | uint32   | ✔       | App that consumes the files|
  | requiredtags             | string   | ✔       | Tags to match on. See match_all_tags parameter below|
  | excludedtags             | string   | ✔       | (Optional) Tags that must NOT be present on a published file to satisfy the query.|
  | match_all_tags           | bool     |          | If true, then items must have all the tags specified, otherwise they must have at least one of the tags.|
  | required_flags           | string   | ✔       | Required flags that must be set on any returned items|
  | omitted_flags            | string   | ✔       | Flags that must not be set on any returned items|
  | search_text              | string   | ✔       | Text to match in the item's title or description|
  | filetype                 | uint32   | ✔       | EPublishedFileInfoMatchingFileType|
  | child_publishedfileid    | uint64   | ✔       | Find all items that reference the given item.|
  | days                     | uint32   | ✔       | If query_type is k_PublishedFileQueryType_RankedByTrend, then this is the number of days to get votes for [1,7].|
  | include_recent_votes_only| bool     | ✔       | If query_type is k_PublishedFileQueryType_RankedByTrend, then limit result set just to items that have votes within the day range given|
  | cache_max_age_seconds    | uint32   |          | Allow stale data to be returned for the specified number of seconds.|
  | language                 | int32    |          | Language to search in and also what gets returned. Defaults to English.|
  | required_kv_tags         | {message}| ✔       | Required key-value tags to match on.|
  | totalonly                | bool     | ✔       | (Optional) If true, only return the total number of files that satisfy this query.|
  | ids_only                 | bool     | ✔       | (Optional) If true, only return the published file ids of files that satisfy this query.|
  | return_vote_data         | bool     | ✔       | Return vote data|
  | return_tags              | bool     | ✔       | Return tags in the file details|
  | return_kv_tags           | bool     | ✔       | Return key-value tags in the file details|
  | return_previews          | bool     | ✔       | Return preview image and video details in the file details|
  | return_children          | bool     | ✔       | Return child item ids in the file details|
  | return_short_description | bool     | ✔       | Populate the short_description field instead of file_description|
  | return_for_sale_data     | bool     | ✔       | Return pricing information, if applicable|
  | return_metadata          | bool     |          | Populate the metadata|
  | return_playtime_stats    | uint32   | ✔       | Return playtime stats for the specified number of days before today.|

  See other: [https://partner.steamgames.com/doc/webapi/IPublishedFileService#GetAppList](https://partner.steamgames.com/doc/webapi/IPublishedFileService#GetAppList)
  """
  def get_app_list(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetAppList/v2/",  access_key, params, headers)
  end
end

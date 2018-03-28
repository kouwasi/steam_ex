defmodule SteamEx.ISteamNews do
  @moduledoc """
  Provides access to the Steam News functionality.

  For more info on how to use the Steamworks Web API please see the [Web API Overview](https://partner.steamgames.com/doc/webapi_overview).
  """

  import SteamEx.API.Base
  @interface "ISteamNews"

  @doc """
  Get the news for the specified app.

  This method has previous versions which are no longer officially supported. They will continue to be usable but it's highly recommended that you use the latest version.
  Change history:
    - **Version 2** - Removes element names from arrays

  | Name      | Type   | Required | Description |
  | appid     | uint32 | ✔       | AppID to retrieve news for|
  | maxlength | uint32 |          | Maximum length for the content to return, if this is 0 the full content is returned, if it's less then a blurb is generated to fit.|
  | enddate   | uint32 |          | Retrieve posts earlier than this date (unix epoch timestamp)|
  | count     | uint32 |          | # of posts to retrieve (default 20)|
  | feeds     | string |          | Comma-seperated list of feed names to return news for|

  See other: [https://partner.steamgames.com/doc/webapi/ISteamNews#GetNewsForApp](https://partner.steamgames.com/doc/webapi/ISteamNews#GetNewsForApp)
  """
  def get_news_for_app(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/GetNewsForApp/v2/",  access_key, params, headers)
  end
end

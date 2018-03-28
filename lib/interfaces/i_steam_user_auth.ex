defmodule SteamEx.ISteamUserAuth do
  @moduledoc """
  Used to access information about users.

  For more info on how to use the Steamworks Web API please see the [Web API Overview](https://partner.steamgames.com/doc/webapi_overview).
  """

  import SteamEx.API.Base
  @interface "ISteamUserAuth"

  @doc """
  | Name               | Type      | Required | Description |
  | steamid            | uint64    | ✔       | Should be the users steamid, unencrypted.|
  | sessionkey         | rawbinary | ✔       | Should be a 32 byte random blob of data, which is then encrypted with RSA using the Steam system's public key. Randomness is important here for security.|
  | encrypted_loginkey | rawbinary | ✔       | 	Should be the users hashed loginkey, AES encrypted with the sessionkey.|

  See other: [https://partner.steamgames.com/doc/webapi/ISteamUserAuth#AuthenticateUser](https://partner.steamgames.com/doc/webapi/ISteamUserAuth#AuthenticateUser)
  """
  def authenticate_user(access_key, params \\ %{}, headers \\ %{}) do
    post(@interface <> "/AuthenticateUser/v1/",  access_key, params, headers)
  end

  @doc """
  | Name   | Type   | Required | Description |
  | key    | string | ✔       | Steamworks Web API user authentication key.|
  | appid  | uint32 | ✔       | appid of game|
  | ticket | string | ✔       | Ticket from GetAuthSessionTicket.|

  See other: [https://partner.steamgames.com/doc/webapi/ISteamUserAuth#AuthenticateUserTicket](https://partner.steamgames.com/doc/webapi/ISteamUserAuth#AuthenticateUserTicket)
  """
  def authenticate_user_ticket(access_key, params \\ %{}, headers \\ %{}) do
    get(@interface <> "/AuthenticateUserTicket/v1/",  access_key, params, headers)
  end
end

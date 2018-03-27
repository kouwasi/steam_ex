defmodule SteamEx.API.Base do
  @moduledoc """
  Provides basic and common functionalities for Steam Web API.
  """

  alias SteamEx.Response

  @baseurl "https://api.steampowered.com/"

  @doc """
  Send API request, then return SteamEx.Reponse
  """
  def request(method, path, access_key \\ nil, params \\ %{}, headers \\ %{}) do
    headers = headers |> Map.put("Content-Type", "application/x-www-form-urlencoded")
    params = params |> Map.put("format", "json")

    params = if access_key != nil, do: params |> Map.put("key", access_key)

    case method do
      :get -> HTTPoison.get!(process_url(path) <> "?" <> URI.encode_query(params), headers)
      :post -> HTTPoison.post!(process_url(path), {:form, params |> Map.to_list}, headers)
      _ -> raise "method required :get or :post atom."
    end
    |> response
  end

  def get(path, access_key, params \\ %{}, headers \\ %{}) do
    request(:get, path, access_key, params, headers)
  end

  def post(path, access_key, params \\ %{}, headers \\ %{}) do
    request(:post, path, access_key, params, headers)
  end

  defp process_url(url) do
    @baseurl <> url
  end

  defp response(response) do
    body = case response.body do
      "" -> nil
      _ -> response.body
    end
    %Response {
      status_code: response.status_code,
      headers: response.headers,
      body: body
    }
  end
end
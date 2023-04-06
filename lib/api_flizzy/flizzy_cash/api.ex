defmodule ApiFlizzy.FlizzyCash.Api do




   @moduledoc """
  Documentation for `Flizzy Cash`.

  This interface is based on version 3 of the api.
  Base URL is "https://flizzy.id/api/v1/"
 """

  @cg_base_url "https://flizzy.id/api/v1/"
  @print_url false

  @spec get_data(binary) ::
          false
          | nil
          | true
          | binary
          | [false | nil | true | binary | list | number | {any, any, any} | map]
          | number
          | %{
              optional(atom | binary | {any, any, any}) =>
                false | nil | true | binary | list | number | {any, any, any} | map
            }
  def get_data(api_path) do
    url = @cg_base_url <> api_path
    if @print_url, do: IO.puts url
    res = HTTPoison.get!(url)
    Poison.decode!(res.body)
  end

  def get_data_with_params(api_path,params \\%{}) do
    query_params = URI.encode_query(params)
    url = @cg_base_url <> api_path <> query_params
    if @print_url, do: IO.puts url
    res = HTTPoison.get!(url)
    Poison.decode!(res.body)
  end

  @doc """
  Ping API

  """
  def test_ping do
    get_data("ping")
  end

  @doc """
  Get the 11.5k coins assets include the platform
  """
  def ambil_coin do
    get_data("list/coins")
  end
end

# Api Flizzy

To start your Phoenix server:
  * Install Elixir V1.14.3
  * Phoenix Framework V.1.7.0
  
  * Run `mix setup` to install and setup dependencies
  * Run Phoenix with (mix phx.server \\ iex -S mix phx.server)
  * Run without Phoenix (iex -S mix run)
----------------------------------------------
# inside IEx with `iex -S mix phx.server \\ iex -S mix run`
 
 
- iex(1)> ApiFlizzy.FlizzyCash.Api.test_ping()
%{"Flizzy_Says" => "(V1) To the Bandoeng!"}

- iex(2)> ApiFlizzy.FlizzyCash.Api.ambil_coin()
# Example Output From 11k+ Coins
[
  %{"id" => "01coin", "name" => "01coin", "platforms" => %{}, "symbol" => "zoc"},
  %{
    "id" => "0chain",
    "name" => "Zus",
    "platforms" => %{
      "ethereum" => "0xb9ef770b6a5e12e45983c5d80545258aa38f3b78",
      "polygon-pos" => "0x8bb30e0e67b11b978a5040144c410e1ccddcba30"
    },
    "symbol" => "zcn"
  },
  %{
    "id" => "0vix-protocol",
    "name" => "0VIX Protocol",
    "platforms" => %{},
    "symbol" => "vix"
  },
  %{
    "id" => "0x",
    "name" => "0x",
    "platforms" => %{
      "avalanche" => "0x596fa47043f99a4e0f122243b841e55375cde0d2",
      "energi" => "0x591c19dc0821704bedaa5bbc6a66fee277d9437e",
      "ethereum" => "0xe41d2489571d322189246dafa5ebde1f4699f498",
      "harmony-shard-0" => "0x8143e2a1085939caa9cef6665c2ff32f7bc08435"
    },
    "symbol" => "zrx"
  }
  
  
  # Phoenix endpoint with `mix phx.server \\ iex -S mix phx.server`
  -http://localhost:PORT/api/ping
  -http://localhost:PORT/api/coins
  
  
----------------------------------------------

Available Routes

─$ mix phx.routes                                                   
Compiling 1 file (.ex)
  GET  /api/ping   ApiFlizzyWeb.ApiController :ping
  GET  /api/coins  ApiFlizzyWeb.ApiController :list_coinnya
  
----------------------------------------------


Ready to run in production? Keepin Touch With Me @febr.id [instagram]

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

defmodule ApiFlizzyWeb.ApiController do
  use ApiFlizzyWeb, :controller

  def ping(conn, _paramsnya) do
    result = ApiFlizzy.FlizzyCash.Api.test_ping()

    if Enum.empty?(result) do
    conn
    |> put_status(200)
    |> json(%{"Flizzy Says" => "(V1) Fail To the Moon!"})
    else
      conn
      |> put_status(200)
      |> json(%{"Flizzy Says" => "(V1) To the Moon!"})
    end
  end
def list_coinnya(conn, _parameter) do
  result = ApiFlizzy.FlizzyCash.Api.ambil_coin()
  conn
  |> put_status(200)
  |> json(result)

end


end

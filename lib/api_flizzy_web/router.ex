defmodule ApiFlizzyWeb.Router do
  use ApiFlizzyWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ApiFlizzyWeb do
    pipe_through :api

    get "/ping", ApiController, :ping
    get "/coins", ApiController, :list_coinnya
  end

  # Enable Swoosh mailbox preview in development

end

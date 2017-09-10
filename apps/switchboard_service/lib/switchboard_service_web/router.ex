defmodule SwitchboardServiceWeb.Router do
  use SwitchboardServiceWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SwitchboardServiceWeb do
    pipe_through :api

    post "/switchboard/:account_id", Controller, :create_switchboard
  end
end

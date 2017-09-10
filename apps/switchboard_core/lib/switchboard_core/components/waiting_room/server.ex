defmodule SwitchboardCore.Components.WaitingRoom.Server do
  use GenServer

  import SwitchboardCore.Helpers.Registry

  def start_link(account_id) do
    name = via_tuple(__MODULE__, account_id)

    GenServer.start_link(__MODULE__, :ok, name: name)
  end
end

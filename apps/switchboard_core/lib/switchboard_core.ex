defmodule SwitchboardCore do
  @moduledoc ""

  @server_name SwitchboardCore.Server

  def create_switchboard(account_id: account_id) do
    GenServer.call(@server_name, {:create_switchboard, account_id})
  end
end

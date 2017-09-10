defmodule SwitchboardCore.Server do
  use GenServer

  alias SwitchboardCore.Switchboard.Supervisor

  def start_link do
    GenServer.start_link(__MODULE__, :ok, name: __MODULE__)
  end

  def handle_call({:create_switchboard, account_id}, _from, state) do
    case Supervisor.create_switchboard(account_id) do
      {:ok, _} -> {:reply, {:ok, %{success: true}}, state}
      {:error, reason} -> {:reply, {:error, %{error: reason}}, state}
    end
  end
end

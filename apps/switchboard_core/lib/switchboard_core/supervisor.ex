defmodule SwitchboardCore.Switchboard.Supervisor do
  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, :ok, name: __MODULE__)
  end

  def create_switchboard(account_id) do
    Supervisor.start_child(__MODULE__, [account_id: account_id])
  end

  def init(_) do
    children = [
      worker(SwitchboardCore.Orchestrator, [])
    ]

    supervise(children, strategy: :simple_one_for_one)
  end
end

defmodule SwitchboardCore.Orchestrator do
  use GenServer

  import SwitchboardCore.Helpers.Registry

  alias SwitchboardCore.Switchboard.OrchestratorSupervisor

  def start_link({_id, account_id}) do
    name = via_tuple(__MODULE__, account_id)

    GenServer.start_link(__MODULE__, account_id, name: name)
  end

  def init(account_id) do
    start_supervisor(account_id)
  end

  defp start_supervisor(account_id) do
    OrchestratorSupervisor.start_link(account_id)
  end
end

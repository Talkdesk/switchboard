defmodule SwitchboardCore.Switchboard.OrchestratorSupervisor do
  use Supervisor

  import SwitchboardCore.Helpers.Registry

  def start_link(account_id) do
    name = via_tuple(__MODULE__, account_id)

    Supervisor.start_link(__MODULE__, account_id, name: name)
  end

  def init(account_id) do
    children = [
      worker(SwitchboardCore.Components.WaitingRoom.Server, [account_id]),
      worker(SwitchboardCore.Components.AssignmentService.Server, [account_id]),
      worker(SwitchboardCore.Components.BookingService.Server, [account_id]),
    ]

    supervise(children, strategy: :one_for_one)
  end
end

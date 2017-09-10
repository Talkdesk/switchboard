defmodule SwitchboardServiceWeb.Controller do
  use SwitchboardServiceWeb, :controller

  def create_switchboard(conn, %{"account_id" => account_id}) do
    {_, result} = SwitchboardCore.create_switchboard(account_id: account_id)

    json(conn, result)
  end
end

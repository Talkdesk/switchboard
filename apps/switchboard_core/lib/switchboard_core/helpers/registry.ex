defmodule SwitchboardCore.Helpers.Registry do
  def via_tuple(module, id) do
    {:via, Registry, {SwitchboardCore.Registry, name(module, id)}}
  end

  def pid(name) do
    case Registry.lookup(SwitchboardCore.Registry, name) do
      [{pid, _value}] -> pid
      _ -> nil
    end
  end

  defp name(module, id) do
    "#{module}-#{id}"
  end
end

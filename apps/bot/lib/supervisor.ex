defmodule Bot.Supervisor do
  use Supervisor

  alias Bot.Consumer

  def start_link(args) do
    Supervisor.start_link(__MODULE__, args, name: __MODULE__)
  end

  @impl true
  def init(_init_arg) do
    children = [Consumer]

    Supervisor.init(children, strategy: :one_for_one)
  end
end

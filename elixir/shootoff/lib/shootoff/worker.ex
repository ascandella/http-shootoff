defmodule Shootoff.Worker do
  def start_link do
    Plug.Adapters.Cowboy.http(
      Shootoff.Router,
      [],
      port: Application.get_env(:shootoff, :port)
    )
  end
end

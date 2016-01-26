defmodule Shootoff.Router do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/simple" do
    conn
    |> send_resp(200, "hello")
  end

  match _ do
    send_resp(conn, 404, "oops")
  end
end

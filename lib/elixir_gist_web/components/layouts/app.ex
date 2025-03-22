defmodule ElixirGistWeb.Layouts.App do
  alias Phoenix.LiveView.JS

  def toggle_user_menu() do
    JS.toggle(
      to: "#user-menu",
      in: {"transition ease-in-out duration-100", "transform opacity-0 translate-y-[-10%]", "transform opacity-100 translate-y-0"},
      out: {"transition ease-in-out duration-100", "transform opacity-100 translate-y-0", "transform opacity-0 translate-y-[-10%]"}
    )
  end
end

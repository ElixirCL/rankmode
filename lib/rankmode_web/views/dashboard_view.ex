defmodule RankmodeWeb.DashboardView do
  use RankmodeWeb, :view
  alias RankmodeWeb.Router.Helpers, as: Routes
  alias RankmodeWeb.Live.Components.Icons

  def sidebar_selected_item(current, item) do
    case current == item do
      true -> "rounded-lg bg-white font-semibold text-slate-700 shadow-soft-xl"
      false -> ""
    end
  end
end

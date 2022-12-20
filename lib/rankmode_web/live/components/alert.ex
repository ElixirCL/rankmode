defmodule RankmodeWeb.Live.Components.Alert do
  use Phoenix.Component

  alias __MODULE__

  def new(%{dismissable: true} = assigns) do
    ~H"""
    <Alert.new class={@class}>
      <%= render_slot Map.get(assigns, :inner_block, "") %>
        <button phx-click="lv:clear-flash"
              phx-value-key={@key}
              type="button"
              class="box-content absolute top-0 right-0 p-4 text-sm text-white bg-transparent border-0 rounded w-4 h-4 z-2"
        >
        <span aria-hidden="true" class="text-center cursor-pointer">&#10005;</span>
      </button>
    </Alert.new>
    """
  end

  def new(assigns) do
    ~H"""
    <div class={["relative w-full p-4 text-white rounded-lg", @class]}>
      <%= render_slot @inner_block %>
    </div>
    """
  end

  def pink(assigns) do
    ~H"""
    <Alert.new class="bg-fuchsia-500" key={Map.get(assigns, :key, :info)} dismissable={Map.get(assigns, :dismissable, true)}><%= Map.get(assigns, :text, false) || render_slot Map.get(assigns, :inner_block, "") %></Alert.new>
    """
  end

  def slate(assigns) do
    ~H"""
    <Alert.new class="bg-slate-400" key={Map.get(assigns, :key, :info)} dismissable={Map.get(assigns, :dismissable, true)}><%= Map.get(assigns, :text, false) || render_slot Map.get(assigns, :inner_block, "") %></Alert.new>
    """
  end

  def green(assigns) do
    ~H"""
    <Alert.new class="bg-lime-500" key={Map.get(assigns, :key, :info)} dismissable={Map.get(assigns, :dismissable, true)}><%= Map.get(assigns, :text, false) || render_slot Map.get(assigns, :inner_block, "") %></Alert.new>
    """
  end

  def red(assigns) do
    ~H"""
    <Alert.new class="bg-red-500" key={Map.get(assigns, :key, :info)} dismissable={Map.get(assigns, :dismissable, true)}><%= Map.get(assigns, :text, false) || render_slot Map.get(assigns, :inner_block, "") %></Alert.new>
    """
  end

  def yellow(assigns) do
    ~H"""
    <Alert.new class="bg-yellow-400" key={Map.get(assigns, :key, :info)} dismissable={Map.get(assigns, :dismissable, true)}><%= Map.get(assigns, :text, false) || render_slot Map.get(assigns, :inner_block, "") %></Alert.new>
    """
  end

  def blue(assigns) do
    ~H"""
    <Alert.new class="bg-cyan-500" key={Map.get(assigns, :key, :info)} dismissable={Map.get(assigns, :dismissable, true)}><%= Map.get(assigns, :text, false) || render_slot Map.get(assigns, :inner_block, "") %></Alert.new>
    """
  end

  def gray(assigns) do
    ~H"""
    <Alert.new class="bg-gray-100" key={Map.get(assigns, :key, :info)} dismissable={Map.get(assigns, :dismissable, true)}><%= Map.get(assigns, :text, false) || render_slot Map.get(assigns, :inner_block, "") %></Alert.new>
    """
  end

  def dark(assigns) do
    ~H"""
    <Alert.new class="bg-slate-700" key={Map.get(assigns, :key, :info)} dismissable={Map.get(assigns, :dismissable, true)}><%= Map.get(assigns, :text, false) || render_slot Map.get(assigns, :inner_block, "") %></Alert.new>
    """
  end
end

defmodule RankmodeWeb.Live.Components.Alert.Gradient do
  use Phoenix.Component

  alias RankmodeWeb.Live.Components.Alert

  def pink(assigns) do
    ~H"""
    <Alert.new class="border border-solid bg-gradient-to-tl from-purple-700 to-pink-500 border-fuchsia-300" key={Map.get(assigns, :key, :info)} dismissable={Map.get(assigns, :dismissable, true)}><%= Map.get(assigns, :text, false) || render_slot Map.get(assigns, :inner_block, "") %></Alert.new>
    """
  end

  def slate(assigns) do
    ~H"""
    <Alert.new class="border border-solid bg-gradient-to-tl from-slate-600 to-slate-300 border-slate-100" key={Map.get(assigns, :key, :info)} dismissable={Map.get(assigns, :dismissable, true)}><%= Map.get(assigns, :text, false) || render_slot Map.get(assigns, :inner_block, "") %></Alert.new>
    """
  end

  def green(assigns) do
    ~H"""
    <Alert.new class="border border-solid bg-gradient-to-tl from-green-600 to-lime-400 border-lime-300" key={Map.get(assigns, :key, :info)} dismissable={Map.get(assigns, :dismissable, true)}><%= Map.get(assigns, :text, false) || render_slot Map.get(assigns, :inner_block, "") %></Alert.new>
    """
  end

  def red(assigns) do
    ~H"""
    <Alert.new class="border border-solid bg-gradient-to-tl from-red-600 to-rose-400 border-red-300" key={Map.get(assigns, :key, :info)} dismissable={Map.get(assigns, :dismissable, true)}><%= Map.get(assigns, :text, false) || render_slot Map.get(assigns, :inner_block, "") %></Alert.new>
    """
  end

  def yellow(assigns) do
    ~H"""
    <Alert.new class="border border-solid bg-gradient-to-tl from-red-500 to-yellow-400 border-orange-100" key={Map.get(assigns, :key, :info)} dismissable={Map.get(assigns, :dismissable, true)}><%= Map.get(assigns, :text, false) || render_slot Map.get(assigns, :inner_block, "") %></Alert.new>
    """
  end

  def blue(assigns) do
    ~H"""
    <Alert.new class="border border-solid bg-gradient-to-tl from-blue-600 to-cyan-400 border-cyan-200" key={Map.get(assigns, :key, :info)} dismissable={Map.get(assigns, :dismissable, true)}><%= Map.get(assigns, :text, false) || render_slot Map.get(assigns, :inner_block, "") %></Alert.new>
    """
  end

  def gray(assigns) do
    ~H"""
    <Alert.new class="border border-solid bg-gradient-to-tl from-gray-400 to-gray-100 border-slate-100" key={Map.get(assigns, :key, :info)} dismissable={Map.get(assigns, :dismissable, true)}><%= Map.get(assigns, :text, false) || render_slot Map.get(assigns, :inner_block, "") %></Alert.new>
    """
  end

  def dark(assigns) do
    ~H"""
    <Alert.new class="border border-solid bg-gradient-to-tl from-gray-900 to-slate-800 border-slate-100" key={Map.get(assigns, :key, :info)} dismissable={Map.get(assigns, :dismissable, true)}><%= Map.get(assigns, :text, false) || render_slot Map.get(assigns, :inner_block, "") %></Alert.new>
    """
  end
end

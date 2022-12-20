defmodule RankmodeWeb.Live.Components.Chip do
  use Phoenix.Component

  alias __MODULE__

  def new(assigns) do
    ~H"""
    <span class={[
      "p-1.2 py-2.2 px-3.6 text-xs rounded-1.8 inline-block whitespace-nowrap text-center align-baseline font-bold uppercase leading-none ",
      Map.get(assigns, :class, "")
      ]}>
      <%= @text %>
    </span>
    """
  end

  def pink(assigns) do
    ~H"""
    <Chip.new class={["bg-pink-300 text-fuchsia-700", " ", Map.get(assigns, :class, "")]} text={@text}/>
    """
  end

  def slate(assigns) do
    ~H"""
    <Chip.new class={["bg-slate-200 text-slate-650", " ", Map.get(assigns, :class, "")]} text={@text}/>
    """
  end

  def blue(assigns) do
    ~H"""
    <Chip.new class={["bg-sky-200 text-cyan-600", " ", Map.get(assigns, :class, "")]} text={@text}/>
    """
  end

  def green(assigns) do
    ~H"""
    <Chip.new class={["bg-lime-200 text-lime-600", " ", Map.get(assigns, :class, "")]} text={@text}/>
    """
  end

  def red(assigns) do
    ~H"""
    <Chip.new class={["bg-red-200 text-red-700", " ", Map.get(assigns, :class, "")]} text={@text}/>
    """
  end

  def yellow(assigns) do
    ~H"""
    <Chip.new class={["bg-orange-50 text-amber-400", " ", Map.get(assigns, :class, "")]} text={@text}/>
    """
  end

  def gray(assigns) do
    ~H"""
    <Chip.new class={["bg-white text-slate-700", " ", Map.get(assigns, :class, "")]} text={@text}/>
    """
  end

  def dark(assigns) do
    ~H"""
    <Chip.new class={["bg-slate-650 text-slate-750", " ", Map.get(assigns, :class, "")]} text={@text}/>
    """
  end
end

defmodule RankmodeWeb.Live.Components.Chip.Gradient do
  use Phoenix.Component

  alias RankmodeWeb.Live.Components.Chip

  def pink(assigns) do
    ~H"""
    <Chip.new class={["bg-gradient-to-tl from-purple-700 to-pink-500", " ", Map.get(assigns, :class, "")]} text={@text}/>
    """
  end

  def slate(assigns) do
    ~H"""
    <Chip.new class={["bg-gradient-to-tl from-slate-600 to-slate-300", " ", Map.get(assigns, :class, "")]} text={@text}/>
    """
  end

  def blue(assigns) do
    ~H"""
    <Chip.new class={["bg-gradient-to-tl from-blue-600 to-cyan-400", " ", Map.get(assigns, :class, "")]} text={@text}/>
    """
  end

  def green(assigns) do
    ~H"""
    <Chip.new class={["bg-gradient-to-tl from-green-600 to-lime-400", " ", Map.get(assigns, :class, "")]} text={@text}/>
    """
  end

  def red(assigns) do
    ~H"""
    <Chip.new class={["bg-gradient-to-tl from-red-600 to-rose-400", " ", Map.get(assigns, :class, "")]} text={@text}/>
    """
  end

  def yellow(assigns) do
    ~H"""
    <Chip.new class={["bg-gradient-to-tl from-red-500 to-yellow-400", " ", Map.get(assigns, :class, "")]} text={@text}/>
    """
  end

  def gray(assigns) do
    ~H"""
    <Chip.new class={["bg-gradient-to-tl from-gray-400 to-gray-100", " ", Map.get(assigns, :class, "")]} text={@text}/>
    """
  end

  def dark(assigns) do
    ~H"""
    <Chip.new class={["bg-gradient-to-tl from-gray-900 to-slate-800", " ", Map.get(assigns, :class, "")]} text={@text}/>
    """
  end
end

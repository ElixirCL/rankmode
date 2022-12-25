defmodule RankmodeWeb.Live.Components.Avatar do
  use Phoenix.Component

  alias __MODULE__

  def new(%{size: "xs"} = assigns) do
    ~H"""
    <Avatar.new
      src={Map.get(assigns, :src, "")}
      alt={Map.get(assigns, :alt, "")}
      title={Map.get(assigns, :title, "")}
      round={Map.get(assigns, :round, false)}
      circle={Map.get(assigns, :circle, false)}
      class={[
        "w-6 h-6",
        Map.get(assigns, :class, "")
      ]}
    />
    """
  end

  def new(%{size: "s"} = assigns) do
    ~H"""
    <Avatar.new
      src={Map.get(assigns, :src, "")}
      alt={Map.get(assigns, :alt, "")}
      title={Map.get(assigns, :title, "")}
      round={Map.get(assigns, :round, false)}
      circle={Map.get(assigns, :circle, false)}
      class={[
        "w-9 h-9",
        Map.get(assigns, :class, "")
      ]}
    />
    """
  end

  def new(%{size: "m"} = assigns) do
    ~H"""
    <Avatar.new
      src={Map.get(assigns, :src, "")}
      alt={Map.get(assigns, :alt, "")}
      title={Map.get(assigns, :title, "")}
      round={Map.get(assigns, :round, false)}
      circle={Map.get(assigns, :circle, false)}
      class={[
        "w-12 h-12",
        Map.get(assigns, :class, "")
      ]}
    />
    """
  end

  def new(%{size: "l"} = assigns) do
    ~H"""
    <Avatar.new
      src={Map.get(assigns, :src, "")}
      alt={Map.get(assigns, :alt, "")}
      title={Map.get(assigns, :title, "")}
      round={Map.get(assigns, :round, false)}
      circle={Map.get(assigns, :circle, false)}
      class={[
        "w-14 h-14",
        Map.get(assigns, :class, "")
      ]}
    />
    """
  end

  def new(%{size: "xl"} = assigns) do
    ~H"""
    <Avatar.new
      src={Map.get(assigns, :src, "")}
      alt={Map.get(assigns, :alt, "")}
      title={Map.get(assigns, :title, "")}
      round={Map.get(assigns, :round, false)}
      circle={Map.get(assigns, :circle, false)}
      class={[
        "w-19 h-19",
        Map.get(assigns, :class, "")
      ]}
    />
    """
  end

  def new(assigns) do
    ~H"""
    <img
      src={Map.get(assigns, :src, "")}
      alt={Map.get(assigns, :alt, "")}
      title={Map.get(assigns, :title, "")}
      class={[
        "inline-flex items-center justify-center mr-2 text-white transition-all duration-200 ease-in-out text-sm",
        case Map.get(assigns, :round, false) do
          true -> "rounded-xl"
          false -> case Map.get(assigns, :circle, false) do
              true -> "rounded-circle"
              false -> ""
            end
        end,
        Map.get(assigns, :class, ""),
      ]}
      style={Map.get(assigns, :style, "")}
    />
    """
  end
end

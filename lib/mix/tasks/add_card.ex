defmodule Mix.Tasks.Rankmode.Add.Card do
  use Mix.Task

  alias Rankmode.Cards

  @shortdoc "Add a new Card for use. Use rankmode.add.card example to use example values."
  def run(args) do
    Mix.Task.run("app.start")
    add_card(List.first(args))
    |> IO.inspect
  end

  defp add_card(nil) do
    "Error: A card unique identifier is needed"
  end

  defp add_card("example") do
    Enum.each(1..1000, fn num ->
      Cards.Commands.create(%{
        uid: "tc:#{num}"
      })
    end)
  end

  defp add_card(uid) when is_binary(uid) do
    Cards.Commands.create(%{
      uid: uid
    })
  end
end

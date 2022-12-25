defmodule Mix.Tasks.Rankmode.Add.Judgements.Xx do
  use Mix.Task
  alias Rankmode.Judgements.Commands
  @shortdoc "Add data for PIU XX Judgements."
  def run(_id) do
    Mix.Task.run("app.start")
    add_judgements()
  end

  defp add_judgements() do
    game = Rankmode.Games.get(id: 1)
    mix = Rankmode.Mixes.get(id: 1)

    Commands.create(%{
      name: "Easy Judgement",
      shortname: "ej",
      image: "/images/judgements/piu/ej.png",
      game_id: game.id,
      mix_id: mix.id,
      sort: 3
    })

    Commands.create(%{
      name: "Normal Judgement",
      shortname: "nj",
      image: "/images/judgements/piu/nj.png",
      game_id: game.id,
      mix_id: mix.id,
      sort: 2
    })

    Commands.create(%{
      name: "Hard Judgement",
      shortname: "hj",
      image: "/images/judgements/piu/hj.png",
      game_id: game.id,
      mix_id: mix.id,
      sort: 1
    })

    Commands.create(%{
      name: "Rank Judgement",
      shortname: "vj",
      image: "/images/judgements/piu/vj.png",
      game_id: game.id,
      mix_id: mix.id,
      sort: 0
    })
  end
end

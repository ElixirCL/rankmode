defmodule Mix.Tasks.Rankmode.Add.Grades.Xx do
  use Mix.Task
  alias Rankmode.Grades.Commands
  @shortdoc "Add data for PIU XX Grades."
  def run(_id) do
    Mix.Task.run("app.start")
    add_grades()
  end

  defp add_grades() do
    game = Rankmode.Games.get(id: 1)
    mix = Rankmode.Mixes.get(id: 1)

    Commands.create(%{
      name: "SSS",
      shortname: "3s",
      image: "/images/grades/piu/3s.png",
      game_id: game.id,
      mix_id: mix.id
    })

    Commands.create(%{
      name: "SS",
      shortname: "2s",
      image: "/images/grades/piu/2s.png",
      game_id: game.id,
      mix_id: mix.id
    })

    Commands.create(%{
      name: "S",
      shortname: "1s",
      image: "/images/grades/piu/1s.png",
      game_id: game.id,
      mix_id: mix.id
    })

    Commands.create(%{
      name: "A",
      shortname: "a",
      image: "/images/grades/piu/a.png",
      game_id: game.id,
      mix_id: mix.id
    })

    Commands.create(%{
      name: "B",
      shortname: "b",
      image: "/images/grades/piu/b.png",
      game_id: game.id,
      mix_id: mix.id
    })

    Commands.create(%{
      name: "C",
      shortname: "c",
      image: "/images/grades/piu/c.png",
      game_id: game.id,
      mix_id: mix.id
    })

    Commands.create(%{
      name: "D",
      shortname: "d",
      image: "/images/grades/piu/d.png",
      game_id: game.id,
      mix_id: mix.id
    })

    Commands.create(%{
      name: "F",
      shortname: "f",
      image: "/images/grades/piu/f.png",
      game_id: game.id,
      mix_id: mix.id
    })

    Commands.create(%{
      name: "SSS-",
      shortname: "f3s",
      image: "/images/grades/piu/f3s.png",
      game_id: game.id,
      mix_id: mix.id
    })

    Commands.create(%{
      name: "SS-",
      shortname: "f2s",
      image: "/images/grades/piu/f2s.png",
      game_id: game.id,
      mix_id: mix.id
    })

    Commands.create(%{
      name: "S-",
      shortname: "f1s",
      image: "/images/grades/piu/f1s.png",
      game_id: game.id,
      mix_id: mix.id
    })

    Commands.create(%{
      name: "A-",
      shortname: "fa",
      image: "/images/grades/piu/fa.png",
      game_id: game.id,
      mix_id: mix.id
    })

    Commands.create(%{
      name: "B-",
      shortname: "fb",
      image: "/images/grades/piu/fb.png",
      game_id: game.id,
      mix_id: mix.id
    })

    Commands.create(%{
      name: "C-",
      shortname: "fc",
      image: "/images/grades/piu/fc.png",
      game_id: game.id,
      mix_id: mix.id
    })

    Commands.create(%{
      name: "D-",
      shortname: "fd",
      image: "/images/grades/piu/fd.png",
      game_id: game.id,
      mix_id: mix.id
    })

    Commands.create(%{
      name: "F-",
      shortname: "ff",
      image: "/images/grades/piu/ff.png",
      game_id: game.id,
      mix_id: mix.id
    })
  end
end

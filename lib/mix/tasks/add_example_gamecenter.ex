defmodule Mix.Tasks.Rankmode.Add.Game.Center.Example do
  use Mix.Task

  @shortdoc "Add data for Example Game Center."
  def run(_id) do
      Mix.Task.run("app.start")
      add_gamecenter()
  end

  def add_gamecenter() do
    Rankmode.GameCenters.create_gamecenter(%{
      name: "Super Game Center",
      uid: "game.center.1",
      description: "An example Game Center",
      image: "/images/gamecenters/example.jpg",
      contact: "email@example.com",
      location: %{
        address: "Andamiro Headquarters",
        latitude: 37.6474801,
        longitude: 126.7932897
      }
    })

    # Machines
    Rankmode.GameCenters.Machines.create_machine(%{
      uid: "piu.xx.game.center.1.machine.a",
      description: "Pump It Up - XX - A",
      name: "PIU 4EVER",
      image: "/images/gamecenters/example-machine.jpg",
      factory_uid: "PIUXXXXXXXXXX",
      version: "2.08.0",
      game_id: Rankmode.Games.get(uid: "piu").id,
      mix_id: Rankmode.Mixes.get(uid: "piu.xx").id,
      gamecenter_id: Rankmode.GameCenters.get(uid: "game.center.1").id
    })
  end
end

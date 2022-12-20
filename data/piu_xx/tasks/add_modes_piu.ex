defmodule Mix.Tasks.Rankmode.Add.Modes do
    use Mix.Task
    @shortdoc "Add data for Modes (Single, Double, etc)"
    def run(_id) do
        Mix.Task.run("app.start")
        add_modes()
    end

    defp add_modes() do
        Rankmode.Modes.create_mode(%{
            name: "Single",
            shortname: "S",
            game_id: Rankmode.Games.get(uid: "piu").id
        })

        Rankmode.Modes.create_mode(%{
            name: "Double",
            shortname: "D",
            game_id: Rankmode.Games.get(uid: "piu").id
        })

        Rankmode.Modes.create_mode(%{
            name: "Single Perfomance",
            shortname: "SP",
            game_id: Rankmode.Games.get(uid: "piu").id
        })

        Rankmode.Modes.create_mode(%{
            name: "Double Perfomance",
            shortname: "DP",
            game_id: Rankmode.Games.get(uid: "piu").id
        })

        Rankmode.Modes.create_mode(%{
            name: "Co-Op",
            shortname: "C",
            game_id: Rankmode.Games.get(uid: "piu").id
        })

        Rankmode.Modes.create_mode(%{
            name: "Routine",
            shortname: "R",
            game_id: Rankmode.Games.get(uid: "piu").id
        })

        Rankmode.Modes.create_mode(%{
            name: "Half-Double",
            shortname: "HDB",
            game_id: Rankmode.Games.get(uid: "piu").id
        })
    end
end

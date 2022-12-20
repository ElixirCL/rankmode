defmodule Mix.Tasks.Rankmode.Add.Game.Piu do
    use Mix.Task

    @shortdoc "Add data for Pump It Up Game."
    def run(_id) do
        Mix.Task.run("app.start")
        add_game()
    end

    defp add_game() do
        Rankmode.Games.create_game(%{
            uid: "piu",
            name: "Pump It Up",
            shortname: "piu",
            url: "https://en.wikipedia.org/wiki/Pump_It_Up_(video_game_series)",
            image: "games/piu/piu.png",
            image_small: "games/piu/piu-small.png"
        })
    end
end

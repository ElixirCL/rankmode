defmodule Mix.Tasks.Rankmode.Add.Mix.Xx do
    use Mix.Task

    @shortdoc "Add data for Pump It Up XX Mix."
    def run(_id) do
        Mix.Task.run("app.start")
        add_mix()
    end

    defp add_mix() do
        Rankmode.Mixes.create_mix(%{
            uid: "piu.xx",
            name: "Pump It Up XX",
            shortname: "XX",
            number: 34,
            game_id: Rankmode.Games.get(uid: "piu").id,
            url: "https://en.wikipedia.org/wiki/Pump_It_Up_(video_game_series)",
            image: "games/piu/xx.png",
            image_small: "games/piu/xx-small.png"
        })
    end
end

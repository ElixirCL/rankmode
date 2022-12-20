defmodule Mix.Tasks.Rankmode.Add.Songs.Xx do
    use Mix.Task

    @shortdoc "Add data for Pump It Up XX Songs."
    def run(_id) do
        Mix.Task.run("app.start")
        add_songs()
    end

    defp add_songs() do
        "data/piu_xx/piu_xx_songs.json.json"
        |> Path.expand()
        |> File.read!()
        |> Jason.decode!()
        |> Enum.each(fn song ->

            Rankmode.Songs.create_song(%{
                name: song["name"],
                number: song["number"],
                image: song["image"],
                cut: song["cut"],
                category: song["category"],
                titles: song["titles"],
                game_id: Rankmode.Games.get(uid: "piu").id,
                meta: song["meta"]
            })

            Enum.each(song["charts"], fn chart ->
                Rankmode.Songs.Charts.create_chart(%{
                    name: chart["name"],
                    image: chart["image"],
                    type: chart["type"],
                    difficulty: chart["difficulty"],
                    stepmaker: chart["stepmaker"],
                    song_id: Rankmode.Songs.get(number: song["number"]).id,
                    mix_id: Rankmode.Mixes.get(uid: "piu.xx").id,
                    game_id: Rankmode.Games.get(uid: "piu").id,
                    mode_id: Rankmode.Modes.get(shortname: chart["type"]).id,
                    meta: chart["meta"]
                })
            end)

            true
        end)
    end
end

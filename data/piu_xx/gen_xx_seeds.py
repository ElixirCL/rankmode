#!/usr/bin/env python3
import json
import sqlite3
import os
from sqlite3 import Error


def create_connection(db_file):
    conn = None
    try:
        conn = sqlite3.connect(db_file)
    except Error as e:
        print(e)

    return conn

def connect():
    return create_connection("pumpout.db")

conn = connect()

def song_titles(id):
    sql = f"""
    SELECT songTitle.title, internalTitle, code  
FROM songTitle
INNER JOIN "language" l ON l.languageId = songTitle.languageId  
WHERE songTitle.songId = {id}
"""
    cur = conn.cursor()
    cur.execute(sql)
    rows = cur.fetchall()
    items = {}
    for row in rows:
        items[row[2]] = {
            "code": row[2],
            "lang": row[1],
            "title": row[0]
        }
    
    return items

def get_chart_stepmaker(id):
    sql = f"""
    SELECT internalTitle AS name, cs.stepmakerId AS id, cs.chartId AS chart  FROM chartStepmaker cs 
JOIN stepmaker s ON cs.stepmakerId = s.stepmakerId 
WHERE cs.chartId = {id}
"""
    cur = conn.cursor()
    cur.execute(sql)
    rows = cur.fetchall()
    items = []
    for row in rows:
        items.append({
            "name": row[0],
            "id": row[1]
        })
    
    return items[0]

def path(file):
    return os.path.realpath(os.path.dirname(__file__) + file)

def open_path(file, modifier = "r"):
    return open(path(file), modifier)

def add_game_piu():
    return f"""defmodule Mix.Tasks.Rankmode.Add.Game.Piu do
    use Mix.Task

    @shortdoc "Add data for Pump It Up Game."
    def run(_id) do
        Mix.Task.run("app.start")
        add_game()
    end

    defp add_game() do
        Rankmode.Games.create_game(%{{
            uid: "piu",
            name: "Pump It Up",
            shortname: "piu",
            url: "https://en.wikipedia.org/wiki/Pump_It_Up_(video_game_series)",
            image: "/images/games/piu/piu.png",
            image_small: "/images/games/piu/piu-small.png"
        }})
    end
end
"""

def add_mix_piu_xx():
    return f"""defmodule Mix.Tasks.Rankmode.Add.Mix.XX do
    use Mix.Task

    @shortdoc "Add data for Pump It Up XX Mix."
    def run(_id) do
        Mix.Task.run("app.start")
        add_mix()
    end

    defp add_mix() do
        Rankmode.Mixes.create_mix(%{{
            uid: "piu.xx",
            name: "Pump It Up XX",
            shortname: "XX",
            number: 34,
            game_id: Rankmode.Games.get(uid: "piu").id,
            url: "https://en.wikipedia.org/wiki/Pump_It_Up_(video_game_series)",
            image: "/images/games/piu/xx.png",
            image_small: "/images/games/piu/xx-small.png"
        }})
    end
end
"""

def add_countries(countries):
    return f"""defmodule Mix.Tasks.Rankmode.Add.Countries do
    use Mix.Task

    @shortdoc "Add data for Countries."
    def run(_id) do
        Mix.Task.run("app.start")
        add_countries()
    end

    defp add_countries() do
        {countries}
    end
end
"""

def create_country(iso, name):
    return f"""
        Rankmode.Countries.create_country(%{{
                name: "{name}",
                iso: "{iso}",
                image: "/images/countries/flags/{iso.lower()}.png"
        }})
"""

def create_avatar(group, avatar):
    name = avatar["name"]
    price = avatar["pp"]
    mix = avatar["mix"]
    
    pp = avatar["effects"]["pp"]
    exp = avatar["effects"]["exp"]
    event = avatar.get("event", False)

    width = group["size"]["width"]
    height = group["size"]["height"]

    image_name = avatar["image"]
    image = f"/images/avatars/{mix}/{image_name}"
    if mix == "":
        image = f"/images/avatars/{image_name}"

    sort = avatar["sort"]

    return f"""
        Rankmode.Avatars.create_avatar(%{{
                name: "{name}",
                price: {price},
                image: "{image}",
                effects: %{{
                    exp: {exp},
                    pp: {pp}
                }},
                meta: %{{
                    mix: "{mix}",
                    event: {json.dumps(event)},
                    sort: {sort},
                    size: %{{
                        width: {width},
                        height: {height}
                    }}
                }}
        }})
"""

def add_avatars(avatars):
    return f"""defmodule Mix.Tasks.Rankmode.Add.Avatars do
    use Mix.Task

    @shortdoc "Add data for Avatars."
    def run(_id) do
        Mix.Task.run("app.start")
        add_avatars()
    end

    defp add_avatars() do
        {avatars}
    end
end
"""

def add_modes():
    return f"""defmodule Mix.Tasks.Rankmode.Add.Modes do
    use Mix.Task
    @shortdoc "Add data for Modes (Single, Double, etc)"
    def run(_id) do
        Mix.Task.run("app.start")
        add_modes()
    end

    defp add_modes() do
        Rankmode.Modes.create_mode(%{{
            name: "Single",
            shortname: "S",
            game_id: Rankmode.Games.get(uid: "piu").id
        }})

        Rankmode.Modes.create_mode(%{{
            name: "Double",
            shortname: "D",
            game_id: Rankmode.Games.get(uid: "piu").id
        }})

        Rankmode.Modes.create_mode(%{{
            name: "Single Perfomance",
            shortname: "SP",
            game_id: Rankmode.Games.get(uid: "piu").id
        }})

        Rankmode.Modes.create_mode(%{{
            name: "Double Perfomance",
            shortname: "DP",
            game_id: Rankmode.Games.get(uid: "piu").id
        }})

        Rankmode.Modes.create_mode(%{{
            name: "Co-Op",
            shortname: "C",
            game_id: Rankmode.Games.get(uid: "piu").id
        }})

        Rankmode.Modes.create_mode(%{{
            name: "Routine",
            shortname: "R",
            game_id: Rankmode.Games.get(uid: "piu").id
        }})

        Rankmode.Modes.create_mode(%{{
            name: "Half-Double",
            shortname: "HDB",
            game_id: Rankmode.Games.get(uid: "piu").id
        }})
    end
end
"""

def create_song_chart(chart, song, info):

    meta = {
        "stepmaker": get_chart_stepmaker(chart.get("chartId")),
        "song": {
            "id": song.get("songId"),
            "name": song.get("internalTitle")
        },
        "mix": "xx",
        "version": info.get("version")
    }

    rating = chart.get("rating")
    difficulty = rating.get("difficulty").get("internalTitle")
    mode = rating.get("mode").get("internalAbbreviation")
    name = mode + difficulty
    image = f"/images/ratings/piu/{mode.lower()}/{difficulty}.png"
    stepmaker = meta.get("stepmaker").get("name")

    return {
        "name": name,
        "image": image,
        "type": mode,
        "difficulty": int(difficulty),
        "stepmaker": stepmaker,
        "song_id": song.get("songId"),
        "mix_id": "piu.xx",
        "game_id": "piu",
        "mode_id": mode,
        "meta": meta
    }

def create_song(song, info):
    
    name = song.get("internalTitle")
    number = song.get("songId")
    cover = os.path.basename(song.get("card").get("path"))
    image = f"/images/songs/piu/{cover}"
    cut = song.get("cut").get("internalTitle").lower()
    category = song.get("category").get("internalTitle").lower()
    titles = song_titles(number)

    charts = []
    for chart in song.get("charts", []):
        charts.append(create_song_chart(chart, song, info))

    return {
        "name": name,
        "number": number,
        "image": image,
        "cut": cut,
        "category": category,
        "titles": titles,
        "game_uid": "piu",
        "mix_uid": "piu.xx",
        "charts": charts,
        "meta": song
    }

def add_songs(songs):
    return f"""defmodule Mix.Tasks.Rankmode.Add.Songs.Xx do
    use Mix.Task

    @shortdoc "Add data for Pump It Up XX Songs."
    def run(_id) do
        Mix.Task.run("app.start")
        add_songs()
    end

    defp add_songs() do
        "data/piu_xx/{songs}.json"
        |> Path.expand()
        |> File.read!()
        |> Jason.decode!()
        |> Enum.each(fn song ->

            Rankmode.Songs.create_song(%{{
                name: song["name"],
                number: song["number"],
                image: song["image"],
                cut: song["cut"],
                category: song["category"],
                titles: song["titles"],
                game_id: Rankmode.Games.get(uid: "piu").id,
                meta: song["meta"]
            }})

            Enum.each(song["charts"], fn chart ->
                Rankmode.Songs.Charts.create_chart(%{{
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
                }})
            end)

            true
        end)
    end
end
"""

def main():

    data = json.load(open_path("/countries.json"))
    out = open_path("/tasks/add_countries.ex", "w")

    countries = ""
    for key, val in data.items():
        countries = countries + create_country(key, val)

    out.write(add_countries(countries))
    out.close()

    data = json.load(open_path("/avatars.json"))
    out = open_path("/tasks/add_avatars.ex", "w")
    avatars = ""
    for key, item in data.items():
        for info in item["items"]:
            avatars = avatars + create_avatar(item, info)
        
    out.write(add_avatars(avatars))
    out.close()

    out = open_path("/tasks/add_game_piu.ex", "w")
    out.write(add_game_piu())
    out.close()

    out = open_path("/tasks/add_mix_piu_xx.ex", "w")
    out.write(add_mix_piu_xx())
    out.close()

    out = open_path("/tasks/add_modes_piu.ex", "w")
    out.write(add_modes())
    out.close()
    
    data = json.load(open_path("/xx.json"))
    songs = []
    for item in data["rows"]:
        songs.append(create_song(item, data["info"]))
        
    out = open_path("/piu_xx_songs.json", "w")
    out.write(json.dumps(songs))
    out.close()

    out = open_path("/tasks/add_piu_xx_songs.ex", "w")
    out.write(add_songs("piu_xx_songs.json"))
    out.close()

if __name__ == "__main__":
    main()
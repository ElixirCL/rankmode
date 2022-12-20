defmodule Mix.Tasks.Rankmode.Add.Avatars do
    use Mix.Task

    @shortdoc "Add data for Avatars."
    def run(_id) do
        Mix.Task.run("app.start")
        add_avatars()
    end

    defp add_avatars() do
        
        Rankmode.Avatars.create_avatar(%{
                name: "Blank",
                price: 0,
                image: "/images/avatars/blank.jpg",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "",
                    event: false,
                    sort: 0,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "XX Girl",
                price: 0,
                image: "/images/avatars/default.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "",
                    event: false,
                    sort: 0,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Moment Day",
                price: 7500,
                image: "/images/avatars/prime2/000.jpg",
                effects: %{
                    exp: 0.02,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 1,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Force of Ra",
                price: 500,
                image: "/images/avatars/prime2/001.jpg",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 2,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Prima",
                price: 132000,
                image: "/images/avatars/prime2/002.jpg",
                effects: %{
                    exp: 0.1,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 3,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Primo",
                price: 132000,
                image: "/images/avatars/prime2/003.jpg",
                effects: %{
                    exp: 0.1,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 4,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Mari",
                price: 548000,
                image: "/images/avatars/prime2/004.jpg",
                effects: %{
                    exp: 0.2,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 5,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Mori",
                price: 548000,
                image: "/images/avatars/prime2/005.jpg",
                effects: %{
                    exp: 0.2,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 6,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Gardian MK2",
                price: 18000,
                image: "/images/avatars/prime2/006.jpg",
                effects: %{
                    exp: 0.04,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 7,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Arcana",
                price: 18000,
                image: "/images/avatars/prime2/007.jpg",
                effects: %{
                    exp: 0.04,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 8,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Hellfire",
                price: 18000,
                image: "/images/avatars/prime2/008.jpg",
                effects: %{
                    exp: 0.04,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 9,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Merker",
                price: 7500,
                image: "/images/avatars/prime2/009.jpg",
                effects: %{
                    exp: 0.04,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 10,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Ghost Tree",
                price: 41500,
                image: "/images/avatars/prime2/010.jpg",
                effects: %{
                    exp: 0.06,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 11,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Sarabande",
                price: 18000,
                image: "/images/avatars/prime2/011.jpg",
                effects: %{
                    exp: 0.04,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 12,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Christmas Memories",
                price: 500,
                image: "/images/avatars/prime2/012.jpg",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 13,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "God Mode",
                price: 41500,
                image: "/images/avatars/prime2/013.jpg",
                effects: %{
                    exp: 0.06,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 14,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "DAEGI 67",
                price: 79000,
                image: "/images/avatars/prime2/014.jpg",
                effects: %{
                    exp: 0.08,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 15,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Hyperion",
                price: 41500,
                image: "/images/avatars/prime2/015.jpg",
                effects: %{
                    exp: 0.06,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 16,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Mikazuki",
                price: 79000,
                image: "/images/avatars/prime2/016.jpg",
                effects: %{
                    exp: 0.08,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 17,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Yeo rae a",
                price: 500,
                image: "/images/avatars/prime2/017.jpg",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 18,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "An-Soie",
                price: 79000,
                image: "/images/avatars/prime2/018.jpg",
                effects: %{
                    exp: 0.08,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 19,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Zeronia",
                price: 41500,
                image: "/images/avatars/prime2/019.jpg",
                effects: %{
                    exp: 0.06,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 20,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Clotho",
                price: 54800,
                image: "/images/avatars/prime2/020.jpg",
                effects: %{
                    exp: 0.2,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 21,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Amami Satouko",
                price: 336900,
                image: "/images/avatars/prime2/021.jpg",
                effects: %{
                    exp: 0.15,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 22,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Aki&Erue",
                price: 213400,
                image: "/images/avatars/prime2/022.jpg",
                effects: %{
                    exp: 0.12,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 23,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Kumi",
                price: 132000,
                image: "/images/avatars/prime2/023.jpg",
                effects: %{
                    exp: 0.1,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 24,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Super Fantasy",
                price: 500,
                image: "/images/avatars/prime2/024.jpg",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 25,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Follow Me",
                price: 500,
                image: "/images/avatars/prime2/025.jpg",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 26,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Creed",
                price: 336900,
                image: "/images/avatars/prime2/026.jpg",
                effects: %{
                    exp: 0.15,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 27,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "O.B.G Girl",
                price: 500,
                image: "/images/avatars/prime2/027.jpg",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 28,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Exceed Girl",
                price: 500,
                image: "/images/avatars/prime2/028.jpg",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 29,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Fiesta2 Girl",
                price: 500,
                image: "/images/avatars/prime2/029.jpg",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 30,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "HOT",
                price: 500,
                image: "/images/avatars/prime2/030.jpg",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 31,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "O.B.G Girl 2",
                price: 500,
                image: "/images/avatars/prime2/031.jpg",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 32,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Chibi 1",
                price: 500,
                image: "/images/avatars/prime2/032.jpg",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 33,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Chibi 2",
                price: 500,
                image: "/images/avatars/prime2/033.jpg",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 34,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Chibi 3",
                price: 500,
                image: "/images/avatars/prime2/034.jpg",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 35,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Seulki",
                price: 79000,
                image: "/images/avatars/prime2/035.jpg",
                effects: %{
                    exp: 0.08,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 36,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Jiwan",
                price: 79000,
                image: "/images/avatars/prime2/036.jpg",
                effects: %{
                    exp: 0.08,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 37,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Chibi 4",
                price: 500,
                image: "/images/avatars/prime2/037.jpg",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 38,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Mr. Larpus",
                price: 500,
                image: "/images/avatars/prime2/038.jpg",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 39,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Chibi 5",
                price: 500,
                image: "/images/avatars/prime2/039.jpg",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 40,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Mari Prime2",
                price: 0,
                image: "/images/avatars/prime2/040.jpg",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 41,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Mori Prime2",
                price: 0,
                image: "/images/avatars/prime2/041.jpg",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "prime2",
                    event: false,
                    sort: 42,
                    size: %{
                        width: 120,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Prime Boy",
                price: 0,
                image: "/images/avatars/prime/040.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 0,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Prime Girl",
                price: 0,
                image: "/images/avatars/prime/041.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 0,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.1",
                price: 500,
                image: "/images/avatars/prime/000.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 0,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.2",
                price: 500,
                image: "/images/avatars/prime/001.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 1,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.3",
                price: 500,
                image: "/images/avatars/prime/002.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 2,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.4",
                price: 500,
                image: "/images/avatars/prime/003.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 3,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.5",
                price: 500,
                image: "/images/avatars/prime/004.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 4,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.6",
                price: 2500,
                image: "/images/avatars/prime/005.png",
                effects: %{
                    exp: 0.04,
                    pp: 0
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 5,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.7",
                price: 2500,
                image: "/images/avatars/prime/006.png",
                effects: %{
                    exp: 0.04,
                    pp: 0
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 6,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.8",
                price: 5000,
                image: "/images/avatars/prime/007.png",
                effects: %{
                    exp: 0,
                    pp: 0.02
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 7,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.9",
                price: 5000,
                image: "/images/avatars/prime/008.png",
                effects: %{
                    exp: 0,
                    pp: 0.02
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 8,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.10",
                price: 16500,
                image: "/images/avatars/prime/009.png",
                effects: %{
                    exp: 0.04,
                    pp: 0.02
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 9,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.11",
                price: 16500,
                image: "/images/avatars/prime/010.png",
                effects: %{
                    exp: 0.04,
                    pp: 0.02
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 10,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.12",
                price: 16500,
                image: "/images/avatars/prime/011.png",
                effects: %{
                    exp: 0.04,
                    pp: 0.02
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 11,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.13",
                price: 6800,
                image: "/images/avatars/prime/012.png",
                effects: %{
                    exp: 0.08,
                    pp: 0
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 12,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.14",
                price: 6800,
                image: "/images/avatars/prime/013.png",
                effects: %{
                    exp: 0.08,
                    pp: 0
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 13,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.15",
                price: 13500,
                image: "/images/avatars/prime/014.png",
                effects: %{
                    exp: 0,
                    pp: 0.04
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 14,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.16",
                price: 13500,
                image: "/images/avatars/prime/015.png",
                effects: %{
                    exp: 0,
                    pp: 0.04
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 15,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.17",
                price: 44600,
                image: "/images/avatars/prime/016.png",
                effects: %{
                    exp: 0.08,
                    pp: 0.04
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 16,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.18",
                price: 44600,
                image: "/images/avatars/prime/017.png",
                effects: %{
                    exp: 0.08,
                    pp: 0.04
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 17,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.19",
                price: 44600,
                image: "/images/avatars/prime/018.png",
                effects: %{
                    exp: 0.08,
                    pp: 0.04
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 18,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.20",
                price: 18300,
                image: "/images/avatars/prime/019.png",
                effects: %{
                    exp: 0.12,
                    pp: 0
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 19,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.21",
                price: 18300,
                image: "/images/avatars/prime/020.png",
                effects: %{
                    exp: 0.12,
                    pp: 0
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 20,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.22",
                price: 36500,
                image: "/images/avatars/prime/021.png",
                effects: %{
                    exp: 0,
                    pp: 0.06
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 21,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.23",
                price: 36500,
                image: "/images/avatars/prime/022.png",
                effects: %{
                    exp: 0,
                    pp: 0.06
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 22,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.24",
                price: 120300,
                image: "/images/avatars/prime/023.png",
                effects: %{
                    exp: 0.12,
                    pp: 0.06
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 23,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.25",
                price: 120300,
                image: "/images/avatars/prime/024.png",
                effects: %{
                    exp: 0.12,
                    pp: 0.06
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 24,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "No.26",
                price: 120300,
                image: "/images/avatars/prime/025.png",
                effects: %{
                    exp: 0.12,
                    pp: 0.06
                },
                meta: %{
                    mix: "prime",
                    event: false,
                    sort: 25,
                    size: %{
                        width: 116,
                        height: 115
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "MC",
                price: 0,
                image: "/images/avatars/xx/070.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 0,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Mikazuki",
                price: 5000,
                image: "/images/avatars/xx/105.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 1,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Meteor",
                price: 5000,
                image: "/images/avatars/xx/113.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 2,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Mode G",
                price: 10000,
                image: "/images/avatars/xx/115.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 3,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Hellfire",
                price: 4000,
                image: "/images/avatars/xx/118.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 4,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Ailee",
                price: 5000,
                image: "/images/avatars/xx/125.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 5,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Native Magic",
                price: 9999,
                image: "/images/avatars/xx/129.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 6,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Hannah",
                price: 5000,
                image: "/images/avatars/xx/139.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 7,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Matsuri (HEY)",
                price: 50000,
                image: "/images/avatars/xx/150.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 8,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Aya",
                price: 15000,
                image: "/images/avatars/xx/152.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 9,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Pumcaddy",
                price: 15000,
                image: "/images/avatars/xx/153.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 10,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Melissa",
                price: 5000,
                image: "/images/avatars/xx/159.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 11,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Jonathan",
                price: 3500,
                image: "/images/avatars/xx/160.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 12,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Escape",
                price: 5500,
                image: "/images/avatars/xx/162.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 13,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Youyuu Sumire",
                price: 0,
                image: "/images/avatars/xx/142.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: true,
                    sort: 14,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Tritium",
                price: 4000,
                image: "/images/avatars/xx/119.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 15,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Rae A",
                price: 10000,
                image: "/images/avatars/xx/127.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 16,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Phou",
                price: 7000,
                image: "/images/avatars/xx/128.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 17,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Mental Cube",
                price: 2424,
                image: "/images/avatars/xx/132.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 18,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "King Scorpion",
                price: 5000,
                image: "/images/avatars/xx/138.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 19,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Takalook",
                price: 5000,
                image: "/images/avatars/xx/141.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 20,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Alice",
                price: 3500,
                image: "/images/avatars/xx/144.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 21,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Dasom",
                price: 3500,
                image: "/images/avatars/xx/145.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 22,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Century of Limitation",
                price: 23000,
                image: "/images/avatars/xx/146.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 23,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Little Lamb",
                price: 25000,
                image: "/images/avatars/xx/147.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 24,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Denis",
                price: 15000,
                image: "/images/avatars/xx/148.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 25,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Matsuri",
                price: 15000,
                image: "/images/avatars/xx/149.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 26,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Music Warrior",
                price: 3000,
                image: "/images/avatars/xx/117.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 27,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Loar",
                price: 0,
                image: "/images/avatars/xx/163.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: true,
                    sort: 28,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Lyra, the Awaken",
                price: 4000,
                image: "/images/avatars/xx/102.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 29,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Arca",
                price: 15000,
                image: "/images/avatars/xx/120.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 30,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Rhyth",
                price: 15000,
                image: "/images/avatars/xx/121.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 31,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "DENEBOLA",
                price: 15000,
                image: "/images/avatars/xx/122.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 32,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Lightning Green",
                price: 15000,
                image: "/images/avatars/xx/123.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 33,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Electronic Cat",
                price: 15000,
                image: "/images/avatars/xx/124.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 34,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Nashor. Laurence",
                price: 3500,
                image: "/images/avatars/xx/130.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 35,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Guild Savior",
                price: 3000,
                image: "/images/avatars/xx/134.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 36,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Everybody Loves Chicken",
                price: 3000,
                image: "/images/avatars/xx/135.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 37,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Great Teachers",
                price: 2015,
                image: "/images/avatars/xx/137.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 38,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Meiling & Hao-Yu",
                price: 10000,
                image: "/images/avatars/xx/140.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 39,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Hero",
                price: 3500,
                image: "/images/avatars/xx/158.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 40,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "The Quick Brown Fox",
                price: 1234,
                image: "/images/avatars/xx/161.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 41,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Violet Perfume",
                price: 5000,
                image: "/images/avatars/xx/136.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 42,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Freedom of the Dead",
                price: 19490,
                image: "/images/avatars/xx/098.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 43,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Gargoyle",
                price: 40000,
                image: "/images/avatars/xx/099.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 44,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Christos T Elias",
                price: 10000,
                image: "/images/avatars/xx/100.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 45,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Lyra D. Fersen",
                price: 8000,
                image: "/images/avatars/xx/101.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 46,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Amami Satoko",
                price: 10000,
                image: "/images/avatars/xx/104.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 47,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Synt. H. Wulf",
                price: 2222,
                image: "/images/avatars/xx/106.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 48,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Malaventurados",
                price: 3000,
                image: "/images/avatars/xx/107.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 49,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Jeanne",
                price: 3000,
                image: "/images/avatars/xx/108.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 50,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Wonder & World",
                price: 4000,
                image: "/images/avatars/xx/109.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 51,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Princess Choco & Candy Girl",
                price: 5000,
                image: "/images/avatars/xx/110.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 52,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "ABT-1",
                price: 3000,
                image: "/images/avatars/xx/111.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 53,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Alien Pig",
                price: 1000,
                image: "/images/avatars/xx/112.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 54,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "CanCan Rangers",
                price: 1000,
                image: "/images/avatars/xx/114.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 55,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "MERKER",
                price: 30000,
                image: "/images/avatars/xx/083.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 56,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Sarabande",
                price: 25000,
                image: "/images/avatars/xx/084.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 57,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Onpiov",
                price: 8000,
                image: "/images/avatars/xx/085.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 58,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "The Crawling Chaos",
                price: 10101,
                image: "/images/avatars/xx/086.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 59,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Stranger",
                price: 8000,
                image: "/images/avatars/xx/087.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 60,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Amil",
                price: 1111,
                image: "/images/avatars/xx/088.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 61,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Aki & Erue",
                price: 5000,
                image: "/images/avatars/xx/089.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 62,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Unique Duo",
                price: 4000,
                image: "/images/avatars/xx/091.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 63,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Devit",
                price: 3000,
                image: "/images/avatars/xx/092.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 64,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Vermilion & Azure",
                price: 4000,
                image: "/images/avatars/xx/093.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 65,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Miya",
                price: 3000,
                image: "/images/avatars/xx/094.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 66,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Yeong Dong",
                price: 1000,
                image: "/images/avatars/xx/095.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 67,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Human Faced Being",
                price: 10000,
                image: "/images/avatars/xx/096.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 68,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "The Grim Reaper",
                price: 100000,
                image: "/images/avatars/xx/097.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 69,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Rio & Rou",
                price: 5000,
                image: "/images/avatars/xx/090.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 70,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Mingming",
                price: 3000,
                image: "/images/avatars/xx/078.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 71,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Panpan",
                price: 3000,
                image: "/images/avatars/xx/079.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 72,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Fuyu",
                price: 5000,
                image: "/images/avatars/xx/081.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 73,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Mir",
                price: 1000,
                image: "/images/avatars/xx/082.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 74,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Emily",
                price: 5000,
                image: "/images/avatars/xx/071.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 75,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Hero",
                price: 5000,
                image: "/images/avatars/xx/080.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 76,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Hanna",
                price: 1000,
                image: "/images/avatars/xx/072.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 77,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Taeho",
                price: 5000,
                image: "/images/avatars/xx/073.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 78,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Seulki",
                price: 5000,
                image: "/images/avatars/xx/074.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 79,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Clotho",
                price: 100000,
                image: "/images/avatars/xx/075.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 80,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Mari",
                price: 30000,
                image: "/images/avatars/xx/076.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: false,
                    sort: 81,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

        Rankmode.Avatars.create_avatar(%{
                name: "Meow",
                price: 0,
                image: "/images/avatars/xx/077.png",
                effects: %{
                    exp: 0,
                    pp: 0
                },
                meta: %{
                    mix: "xx",
                    event: true,
                    sort: 82,
                    size: %{
                        width: 160,
                        height: 120
                    }
                }
        })

    end
end

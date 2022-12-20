.PHONY: db.data db.setup

db.setup ds:
	mix ecto.setup

db.data dd:
	mix rankmode.add.avatars
	mix rankmode.add.countries
	mix rankmode.add.game.piu
	mix rankmode.add.mix.xx
	mix rankmode.add.modes
	mix rankmode.add.songs.xx
	mix rankmode.add.game.center.example
	mix rankmode.add.card example

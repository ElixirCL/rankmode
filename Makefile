.PHONY: install server db.data db.setup db.boot

server s:
	iex -S mix phx.server

install i:
	mix deps.get

db.setup ds:
	mix ecto.setup

db.data dd:
	mix rankmode.add.avatars
	mix rankmode.add.countries
	mix rankmode.add.game.piu
	mix rankmode.add.mix.xx
	mix rankmode.add.modes
	mix rankmode.add.songs.xx
	mix rankmode.add.grades.xx
	mix rankmode.add.judgements.xx
	mix rankmode.add.game.center.example
	mix rankmode.add.card example

db.boot db:
	make db.setup
	make db.data

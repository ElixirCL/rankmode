.PHONY: install server db.data db.setup db.boot fly.deploy fly.proxy

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

fly.deploy:
	fly deploy . --app rankmode

# For postgres connection
# user: postgres
# db: rankmode
# host: rankmode-db
# port: 6543
# you can configure the db locally in config/dev.exs to point to fly.io
# and then execute the mix tasks to fill with data
fly.proxy:
	fly proxy 6543:5432 -a rankmode-db

defmodule Rankmode.Avatars do
  import Ecto.Query, warn: false
  alias Rankmode.Repo
  alias Rankmode.Avatars.Avatar

  def all() do
    Repo.all(Avatars)
  end

  def get(id: id) do
    Repo.get_by!(Avatar, id: id)
  end

  def blank() do
    get(id: 1)
  end

  @doc "Returns only avatars with price = 0"
  def all_free() do
    from(a in Avatar,
      where: a.price == 0 and
        a.effects["pp"] == 0 and
        a.effects["exp"] == 0 and
        a.meta["event"] == false
    )
    |> Repo.all()
  end

  def create_avatar(attrs) do
    %Avatar{}
    |> Avatar.changeset(attrs)
    |> Repo.insert()
  end
end

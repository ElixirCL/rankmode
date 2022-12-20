defmodule RankmodeWeb.GameplayControllerTest do
  use RankmodeWeb.ConnCase

  import Rankmode.APIFixtures

  alias Rankmode.API.Gameplay

  @create_attrs %{

  }
  @update_attrs %{

  }
  @invalid_attrs %{}

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all gameplays", %{conn: conn} do
      conn = get(conn, Routes.gameplay_path(conn, :index))
      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "create gameplay" do
    test "renders gameplay when data is valid", %{conn: conn} do
      conn = post(conn, Routes.gameplay_path(conn, :create), gameplay: @create_attrs)
      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get(conn, Routes.gameplay_path(conn, :show, id))

      assert %{
               "id" => ^id
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.gameplay_path(conn, :create), gameplay: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update gameplay" do
    setup [:create_gameplay]

    test "renders gameplay when data is valid", %{conn: conn, gameplay: %Gameplay{id: id} = gameplay} do
      conn = put(conn, Routes.gameplay_path(conn, :update, gameplay), gameplay: @update_attrs)
      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get(conn, Routes.gameplay_path(conn, :show, id))

      assert %{
               "id" => ^id
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn, gameplay: gameplay} do
      conn = put(conn, Routes.gameplay_path(conn, :update, gameplay), gameplay: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete gameplay" do
    setup [:create_gameplay]

    test "deletes chosen gameplay", %{conn: conn, gameplay: gameplay} do
      conn = delete(conn, Routes.gameplay_path(conn, :delete, gameplay))
      assert response(conn, 204)

      assert_error_sent 404, fn ->
        get(conn, Routes.gameplay_path(conn, :show, gameplay))
      end
    end
  end

  defp create_gameplay(_) do
    gameplay = gameplay_fixture()
    %{gameplay: gameplay}
  end
end

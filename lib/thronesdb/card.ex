defmodule ThronesDB.Card do
  def all do
    "/public/cards/"
    |> ThronesDB.get!
    |> Map.fetch!(:body)
    |> Enum.map(&parse/1)
  end

  def pack(code) do
    "/public/cards/#{code}.json"
    |> ThronesDB.get!
    |> Map.fetch!(:body)
    |> Enum.map(&parse/1)
  end

  def get(code) do
    "/public/card/#{code}.json"
    |> ThronesDB.get!
    |> Map.fetch!(:body)
    |> parse
  end

  defp parse(map = %{type_code: "agenda"}) do
    ThronesDB.Card.Agenda.parse(map)
  end

  defp parse(map = %{type_code: "attachment"}) do
    ThronesDB.Card.Attachment.parse(map)
  end

  defp parse(map = %{type_code: "character"}) do
    ThronesDB.Card.Character.parse(map)
  end

  defp parse(map = %{type_code: "event"}) do
    ThronesDB.Card.Event.parse(map)
  end

  defp parse(map = %{type_code: "location"}) do
    ThronesDB.Card.Location.parse(map)
  end

  defp parse(map = %{type_code: "title"}) do
    ThronesDB.Card.Title.parse(map)
  end

  defp parse(map = %{type_code: "plot"}) do
    ThronesDB.Card.Plot.parse(map)
  end

  defp parse(map) do
    raise "No parser matching type code: #{map.type_code}"
  end
end

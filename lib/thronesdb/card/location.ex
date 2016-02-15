defmodule ThronesDB.Card.Location do
  defstruct code: "",
    faction_name: "",
    flavor: "",
    illustrator: "",
    is_intrigue: false,
    is_loyal: false,
    is_military: false,
    is_power: false,
    is_unique: false,
    name: "",
    octgnid: "",
    pack_name: "",
    position: 0,
    quantity: 0,
    text: "",
    traits: "",
    url: ""

  def parse(map) do
    map = map |> Map.take(Map.keys(%__MODULE__{}))

    struct(__MODULE__, map)
  end
end

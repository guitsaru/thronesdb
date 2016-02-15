defmodule ThronesDB.Card.Agenda do
  defstruct code: "",
    deck_limit: 0,
    faction_code: "",
    faction_name: "",
    illustrator: "",
    imagesrc: "",
    is_intrigue: false,
    is_loyal: false,
    is_military: false,
    is_power: false,
    is_unique: false,
    name: "",
    octgnid: "",
    pack_code: "",
    pack_name: "",
    position: 0,
    quantity: 0,
    text: "",
    type_code: "",
    type_name: "",
    url: ""

  def parse(map) do
    map = map |> Map.take(Map.keys(%__MODULE__{}))

    struct(__MODULE__, map)
  end
end

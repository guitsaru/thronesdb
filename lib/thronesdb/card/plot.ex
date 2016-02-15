defmodule ThronesDB.Card.Plot do
  defstruct code: "",
   name: "",
   claim: 0,
   deck_limit: 0,
   faction_code: "",
   faction_name: "",
   illustrator: "",
   imagesrc: "",
   income: "",
   initiative: 0,
   is_intrigue: false,
   is_loyal: false,
   is_military: false,
   is_power: false,
   is_unique: false,
   octgn_id: "",
   pack_code: "",
   pack_name: "",
   position: 0,
   quantity: 0,
   reserve: 0,
   text: "",
   traits: "",
   type_code: "",
   type_name: "",
   url: ""

   def parse(map) do
     map = map |> Map.take(Map.keys(%__MODULE__{}))

     struct(__MODULE__, map)
   end
end

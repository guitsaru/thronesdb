defmodule ThronesDB do
  use HTTPoison.Base

  def process_url(url) do
    "http://thronesdb.com/api" <> url
  end

  def process_response_body(body) do
    body
    |> Poison.decode!
    |> process_body_element
  end

  defp process_body_element(map) when is_map(map) do
    for {key, val} <- map, into: %{}, do: {String.to_atom(key), process_body_element(val)}
  end

  defp process_body_element(list) when is_list(list) do
    list
    |> Enum.map(&process_body_element/1)
  end

  defp process_body_element(value), do: value
end

# ThronesDB

An Elixir client for the thronesdb.com Game of Thrones LCG API.

## Usage

```Elixir
ThronesDB.Card.all
ThronesDB.Card.get("01001")
ThronesDB.Card.pack("core")
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add thronesdb to your list of dependencies in `mix.exs`:

        def deps do
          [{:thronesdb, "~> 0.0.1"}]
        end

  2. Ensure thronesdb is started before your application:

        def application do
          [applications: [:thronesdb]]
        end


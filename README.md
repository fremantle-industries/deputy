# Deputy
[![hex.pm version](https://img.shields.io/hexpm/v/ex_deputy.svg?style=flat)](https://hex.pm/packages/ex_deputy)

Register IEx command helpers

## Installation

Add the `ex_deputy` package to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ex_deputy, "~> 0.0.1"}
  ]
end
```

## Requirements

- Erlang 22+
- Elixir 1.11+

## Usage

```elixir
# .iex.exs
import Deputy

# register all public functions
register Foo.IEx
# concat output of conflicting helpers
register Bar.IEx, conflict: :merge
# don't register if a conflicting helper has already been registered
register Baz.IEx, conflict: :ignore
# replace the conflicting helper if one has already been registered
register Foo.IEx, conflict: :replace
```

## Authors

- Alex Kwiatkowski - alex+git@fremantle.io

## License

`ex_deputy` is released under the [MIT license](./LICENSE)

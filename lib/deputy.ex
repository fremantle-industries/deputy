defmodule Deputy do
  @moduledoc """
  Register IEx command helpers.
  """

  # @doc false
  # defmacro __using__(_) do
  #   quote do
  #     # import Ecto.Schema, only: [schema: 2, embedded_schema: 1]

  #     # @primary_key nil
  #     # @timestamps_opts []
  #     # @foreign_key_type :id
  #     # @schema_prefix nil
  #     # @schema_context nil
  #     # @field_source_mapper fn x -> x end

  #     # Module.register_attribute(__MODULE__, :ecto_primary_keys, accumulate: true)
  #     # Module.register_attribute(__MODULE__, :ecto_fields, accumulate: true)
  #     # Module.register_attribute(__MODULE__, :ecto_virtual_fields, accumulate: true)
  #     # Module.register_attribute(__MODULE__, :ecto_query_fields, accumulate: true)
  #     # Module.register_attribute(__MODULE__, :ecto_field_sources, accumulate: true)
  #     # Module.register_attribute(__MODULE__, :ecto_assocs, accumulate: true)
  #     # Module.register_attribute(__MODULE__, :ecto_embeds, accumulate: true)
  #     # Module.register_attribute(__MODULE__, :ecto_raw, accumulate: true)
  #     # Module.register_attribute(__MODULE__, :ecto_autogenerate, accumulate: true)
  #     # Module.register_attribute(__MODULE__, :ecto_autoupdate, accumulate: true)
  #     # Module.register_attribute(__MODULE__, :ecto_redact_fields, accumulate: true)
  #     # Module.put_attribute(__MODULE__, :ecto_derive_inspect_for_redacted_fields, true)
  #     # Module.put_attribute(__MODULE__, :ecto_autogenerate_id, nil)

  #     IO.puts "use Deputy called!!!"
  #   end
  # end

  # import Deputy
  # register Baz.IEx, only: [help: 0]
  # @commands %{}
  @commands %{
    {:help, 0} => [Baz],
    {:venues, 2} => [Baz]
  }
  def register(mod, keyswords \\ []) do
    IO.puts "register: #{inspect mod}, keyswords: #{inspect keyswords}"
    IO.puts "register __MODULE__: #{inspect __MODULE__}"
    IO.puts "registered commands: #{inspect @commands}"

    commands = keyswords
               |> Enum.reduce(fn {name, arity}, acc ->
                 case Map.get(acc, name) do
                   nil -> acc



                 end
               end)

    Module.put_attribute(__MODULE__, :commands, commands)
  end
end

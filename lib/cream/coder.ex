defmodule Cream.Coder do
  @type flags :: integer
  @type value :: binary

  @callback encode(value) :: {flags, value}
  @callback decode(flags, value) :: value

  def encode(nil, value), do: {0, value}
  def encode(coder, value), do: coder.encode(value)

  def decode(nil, _flags, value), do: value
  def decode(coder, flags, value), do: coder.decode(flags, value)
end
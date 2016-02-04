defmodule NioPokitDoc.API.Providers do

  alias NioPokitDoc.{API.Base, Parser}

  def get(id) when is_binary(id) do
    Base.request(:get, "providers/" <> id)
      |> Parser.parse_provider
  end

  def get(params) when is_map(params) do
    Base.request(:get, "providers/?" <> URI.encode_query(params))
      |> Enum.map(&Parser.parse_provider/1)
  end
end

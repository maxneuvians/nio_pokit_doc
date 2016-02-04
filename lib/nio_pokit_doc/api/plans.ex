defmodule NioPokitDoc.API.Plans do
  alias NioPokitDoc.{API.Base, Parser}

  def get(params \\ %{}) do
    Base.request(:get, "plans/?" <> URI.encode_query(params))
      |> Enum.map(&Parser.parse_plan/1)
  end
end

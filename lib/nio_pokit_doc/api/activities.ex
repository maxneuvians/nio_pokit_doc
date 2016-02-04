defmodule NioPokitDoc.API.Activities do

  alias NioPokitDoc.{API.Base, Parser}

  def get do
    Base.request(:get, "activities/")
      |> Enum.map(&Parser.parse_activity/1)
  end

  def get(id) do
    Base.request(:get, "activities/" <> id)
      |> Parser.parse_activity
  end

end

defmodule NioPokitDoc.API.Icd_convert do

  alias NioPokitDoc.{API.Base, Parser}

  def get(code) do
    Base.request(:get, "icd/convert/" <> code)
      |> Parser.parse_icd_convert
  end

end

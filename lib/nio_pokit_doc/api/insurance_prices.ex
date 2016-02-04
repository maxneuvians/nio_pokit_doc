defmodule NioPokitDoc.API.InsurancePrices do
  alias NioPokitDoc.{API.Base, Parser}

  def get(%{cpt_code: _, zip_code: _} = params) do
    Base.request(:get, "prices/insurance?" <> URI.encode_query(params))
      |> Parser.parse_insurance_price
  end

  def get(_params) do
    "You need to include cpt_code and zip_code params"
  end
end

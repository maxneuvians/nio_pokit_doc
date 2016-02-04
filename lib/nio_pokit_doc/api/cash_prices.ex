defmodule NioPokitDoc.API.CashPrices do
  alias NioPokitDoc.{API.Base, Parser}

  def get(%{cpt_code: _, zip_code: _} = params) do
    Base.request(:get, "prices/cash?" <> URI.encode_query(params))
      |> Enum.map(&Parser.parse_cash_price/1)
  end

  def get(_params) do
    "You need to include cpt_code and zip_code params"
  end
end

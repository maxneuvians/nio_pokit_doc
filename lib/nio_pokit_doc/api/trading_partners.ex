defmodule NioPokitDoc.API.TradingPartners do

  alias NioPokitDoc.{API.Base, Parser}

  def get do
    Base.request(:get, "tradingpartners/")
      |> Enum.map(&Parser.parse_trading_partner/1)
  end

  def get(id) do
    Base.request(:get, "tradingpartners/" <> id)
      |> Parser.parse_trading_partner
  end
end

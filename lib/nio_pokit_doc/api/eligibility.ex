defmodule NioPokitDoc.API.Eligibility do
  alias NioPokitDoc.{API.Base, Parser}

  def post(%{member: %{birth_date: _, first_name: _, last_name: _, id: _}, provider: %{first_name: _, last_name: _, npi: _}, trading_partner_id: _} = params) do
    Base.request(:post, "eligibility/", params)
      |> Parser.parse_elibility
  end

  def post(_params) do
    "You need to include correct member, provider, and trading_partner_id params"
  end
end

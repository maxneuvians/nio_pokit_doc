defmodule NioPokitDoc.Parser do

  def parse_activity(object), do: struct(NioPokitDoc.Model.Activity, object)

  def parse_elibility(object), do: struct(NioPokitDoc.Model.Eligibility, object)

  def parse_icd_convert(object), do: struct(NioPokitDoc.Model.Icd_convert, object)

  def parse_plan(object), do: struct(NioPokitDoc.Model.Plan, object)

  def parse_trading_partner(object), do: struct(NioPokitDoc.Model.TradingPartner, object)

end

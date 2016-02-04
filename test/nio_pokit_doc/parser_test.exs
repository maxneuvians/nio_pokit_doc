defmodule NioPokitDoc.ParserTest do
  use ExUnit.Case

  alias NioPokitDoc.Parser

  test "parse_activity/1 creates a new Activity struct from a map" do
    assert Parser.parse_activity(%{}).__struct__ == NioPokitDoc.Model.Activity
  end

  test "parse_elibility/1 creates a new Eligibility struct from a map" do
    assert Parser.parse_elibility(%{}).__struct__ == NioPokitDoc.Model.Eligibility
  end

  test "parse_icd_convert/1 creates a new Icd_convert struct from a map" do
    assert Parser.parse_icd_convert(%{}).__struct__ == NioPokitDoc.Model.Icd_convert
  end

  test "parse_plan/1 creates a new Plan struct from a map" do
    assert Parser.parse_plan(%{}).__struct__ == NioPokitDoc.Model.Plan
  end

  test "parse_trading_partner/1 creates a new TradingPartner struct from a map" do
    assert Parser.parse_trading_partner(%{}).__struct__ == NioPokitDoc.Model.TradingPartner
  end

end

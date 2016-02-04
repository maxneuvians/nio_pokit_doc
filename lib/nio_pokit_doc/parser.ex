defmodule NioPokitDoc.Parser do

  def parse_activity(object), do: struct(NioPokitDoc.Model.Activity, object)

  def parse_cash_price(object), do: struct(NioPokitDoc.Model.CashPrice, object)

  def parse_elibility(object), do: struct(NioPokitDoc.Model.Eligibility, object)

  def parse_icd_convert(object), do: struct(NioPokitDoc.Model.Icd_convert, object)

  def parse_insurance_price(object), do: struct(NioPokitDoc.Model.InsurancePrice, object)

  def parse_medical_procedure_code(object), do: struct(NioPokitDoc.Model.MedicalProcedureCode, object)

  def parse_plan(object), do: struct(NioPokitDoc.Model.Plan, object)

  def parse_provider(object), do: struct(NioPokitDoc.Model.Provider, object)

  def parse_trading_partner(object), do: struct(NioPokitDoc.Model.TradingPartner, object)

end

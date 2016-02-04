defmodule NioPokitDoc.Model.Plan do
  defstruct benefits_summary_url: nil, customer_service_phone: nil,
    deductible: nil, max_out_of_pocket: nil, metallic_level: nil, plan_id: nil,
    plan_name: nil, plan_type: nil, premiums: nil, state: nil,
    trading_partner_id: nil
  @type t :: %__MODULE__{}
end

defmodule NioPokitDoc.Model.Eligibility do
  defstruct coverage: nil, follow_up_action: nil, payer: nil, pharmacy: nil,
    provider: nil, reject_reason: nil, subscriber: nil,
    trading_partner_id: nil, valid_request: nil, summary: nil
  @type t :: %__MODULE__{}
end

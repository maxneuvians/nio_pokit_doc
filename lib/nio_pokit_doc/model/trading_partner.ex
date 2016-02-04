defmodule NioPokitDoc.Model.TradingPartner do
  defstruct id: nil, is_enabled: nil, name: nil, supported_transactions: nil,
    enrollment_required: nil, metrics: nil, monitoring: nil
  @type t :: %__MODULE__{}
end

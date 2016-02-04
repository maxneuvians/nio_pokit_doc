defmodule NioPokitDoc.Model.CashPrice do
  defstruct average_price: nil, cpt_code: nil, geo_zip_area: nil,
    high_price: nil, low_price: nil, median_price: nil,
    standard_deviation: nil
  @type t :: %__MODULE__{}
end

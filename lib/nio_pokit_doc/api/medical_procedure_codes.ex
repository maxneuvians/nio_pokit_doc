defmodule NioPokitDoc.API.MedicalProcedureCodes do

  alias NioPokitDoc.{API.Base, Parser}

  def get(id) when is_binary(id) do
    Base.request(:get, "mpc/" <> id)
      |> Parser.parse_medical_procedure_code
  end

  def get(params) when is_map(params) do
    Base.request(:get, "mpc/?" <> URI.encode_query(params))
      |> Enum.map(&Parser.parse_medical_procedure_code/1)
  end
end

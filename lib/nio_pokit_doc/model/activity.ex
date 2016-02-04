defmodule NioPokitDoc.Model.Activity do
  defstruct callback_url: nil, history: nil, id: nil, name: nil,
    parameters: nil, remaining_transitions: nil, result: nil,
    result_history: nil, state: nil,
    transition_path: nil, units_of_work: nil
  @type t :: %__MODULE__{}
end

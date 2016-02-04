defmodule NioPokitDoc do
  use Application

  def start, do: start(nil, nil)
  def start(_type, _args) do

    unless Application.get_env(:nio_pokit_doc, :pokit_doc_key, nil) && Application.get_env(:nio_pokit_doc, :pokit_doc_secret, nil) do
      raise "[API config missing] Please specify a :pokit_doc_key and :pokit_doc_secret for :nio_pokit_doc"
    end

    import Supervisor.Spec, warn: false

    children = [
      worker(NioPokitDoc.Client, [])
    ]

    opts = [strategy: :one_for_one, name: NioPokitDoc.Supervisor]
    Supervisor.start_link(children, opts)
  end

  defdelegate activities, to: NioPokitDoc.API.Activities, as: :get
  defdelegate activities(id), to: NioPokitDoc.API.Activities, as: :get

  defdelegate eligibility(params), to: NioPokitDoc.API.Eligibility, as: :post

  defdelegate icd_convert(code), to: NioPokitDoc.API.Icd_convert, as: :get

  defdelegate plans(query), to: NioPokitDoc.API.Plans, as: :get

  defdelegate trading_partners, to: NioPokitDoc.API.TradingPartners, as: :get
  defdelegate trading_partners(id), to: NioPokitDoc.API.TradingPartners, as: :get


end

defmodule NioPokitDoc.Mixfile do
  use Mix.Project

  def project do
    [app: :nio_pokit_doc,
     version: "0.5.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:oauth2],
     mod: {NioPokitDoc, []}]
  end

  defp deps do
    [
      {:oauth2, "~> 0.6"},
      {:poison, "~> 2.0"}
    ]
  end
end

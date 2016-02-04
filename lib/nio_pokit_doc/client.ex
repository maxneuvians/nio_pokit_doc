defmodule NioPokitDoc.Client do

  @api_key Application.get_env(:nio_pokit_doc, :pokit_doc_key)
  @api_secret Application.get_env(:nio_pokit_doc, :pokit_doc_secret)
  @base_url "https://platform.pokitdok.com"

  def start_link do
    Agent.start_link(fn -> init end, name: :nio_pokit_doc_client)
  end

  def get do
    Agent.get(:nio_pokit_doc_client, fn client ->
      if OAuth2.AccessToken.expired?(client), do: init, else: client
    end)
  end

  def post do
    get |> add_headers
  end

  defp add_headers(token) do
    %{token | client: %{ token.client | headers: [{"Content-Type", "application/json"}] }}
  end

  defp clean_headers(token) do
    %{token | client: %{ token.client | headers: [] }}
  end

  defp init do
    client = OAuth2.Client.new([
      strategy: OAuth2.Strategy.ClientCredentials,
      client_id: @api_key,
      client_secret: @api_secret,
      site: @base_url,
      token_url: "/oauth2/token"
    ])
    OAuth2.Client.get_token!(client) |> clean_headers
  end

end

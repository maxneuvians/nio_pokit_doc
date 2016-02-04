defmodule NioPokitDoc.API.Base do
  alias OAuth2.AccessToken
  alias NioPokitDoc.{Client, JSON}

  @api_url Application.get_env(:nio_pokit_doc, :pokitdok_url, "/api/")
  @api_version Application.get_env(:nio_pokit_doc, :pokitdok_url, "v4")

  def request(:get, path) do
    Client.get
      |> AccessToken.get!(@api_url <> @api_version <> "/" <> path)
      |> Map.fetch!(:body)
      |> JSON.decode!
      |> Map.fetch!(:data)
  end

  def request(:post, path, params \\ %{}) do
    Client.post
      |> AccessToken.post!(@api_url <> @api_version <> "/" <> path, params)
      |> Map.fetch!(:body)
      |> JSON.decode!
      |> Map.fetch!(:data)
  end
end

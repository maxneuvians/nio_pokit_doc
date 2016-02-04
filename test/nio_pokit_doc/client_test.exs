defmodule NioPokitDoc.ClientTest do
  use ExUnit.Case

  alias NioPokitDoc.Client

  test "it starts a client agent" do
    assert Process.whereis(:nio_pokit_doc_client)
  end

  test "get/0 returns an OAuth2.AccessToken struct" do
    assert Client.get.__struct__ == OAuth2.AccessToken
  end

  test "post/0 returns a OAuth2.AccessToken struct with application/json Content-Type headers" do
    assert Client.post.__struct__ == OAuth2.AccessToken
    assert Client.post.client.headers == [{"Content-Type", "application/json"}]
  end

end

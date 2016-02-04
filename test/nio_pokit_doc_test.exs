defmodule NioPokitDocTest do
  use ExUnit.Case

  test "it checks if :pokit_doc_key and pokit_doc_secret are defined" do
    Application.put_env(:nio_pokit_doc, :pokit_doc_key, nil)
    Application.put_env(:nio_pokit_doc, :pokit_doc_secret, nil)
    assert_raise(RuntimeError, fn -> NioPokitDoc.start end)
  end

  test "it starts a client agent" do
    assert Process.whereis(:nio_pokit_doc_client)
  end
end

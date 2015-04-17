json.array!(@urug2s) do |urug2|
  json.extract! urug2, :id, :title
  json.url urug2_url(urug2, format: :json)
end

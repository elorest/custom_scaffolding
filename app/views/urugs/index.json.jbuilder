json.array!(@urugs) do |urug|
  json.extract! urug, :id, :title
  json.url urug_url(urug, format: :json)
end

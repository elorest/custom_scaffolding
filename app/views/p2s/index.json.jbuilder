json.array!(@p2s) do |p2|
  json.extract! p2, :id, :title
  json.url p2_url(p2, format: :json)
end

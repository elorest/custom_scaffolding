json.array!(@p1s) do |p1|
  json.extract! p1, :id, :title
  json.url p1_url(p1, format: :json)
end

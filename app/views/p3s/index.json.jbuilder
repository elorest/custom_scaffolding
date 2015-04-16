json.array!(@p3s) do |p3|
  json.extract! p3, :id, :title
  json.url p3_url(p3, format: :json)
end

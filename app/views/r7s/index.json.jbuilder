json.array!(@r7s) do |r7|
  json.extract! r7, :id, :title
  json.url r7_url(r7, format: :json)
end

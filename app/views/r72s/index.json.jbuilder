json.array!(@r72s) do |r72|
  json.extract! r72, :id, :title
  json.url r72_url(r72, format: :json)
end

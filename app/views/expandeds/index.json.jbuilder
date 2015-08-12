json.array!(@expandeds) do |expanded|
  json.extract! expanded, :id, :identifier, :content, :position, :parent
  json.url expanded_url(expanded, format: :json)
end

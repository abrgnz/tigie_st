json.array!(@contents) do |content|
  json.extract! content, :id, :identifier, :content, :position, :parent
  json.url content_url(content, format: :json)
end

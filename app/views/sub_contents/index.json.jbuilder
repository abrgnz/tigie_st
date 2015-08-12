json.array!(@sub_contents) do |sub_content|
  json.extract! sub_content, :id, :identifier, :content, :position, :parent
  json.url sub_content_url(sub_content, format: :json)
end

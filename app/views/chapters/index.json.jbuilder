json.array!(@chapters) do |chapter|
  json.extract! chapter, :id, :identifier, :content
  json.url chapter_url(chapter, format: :json)
end

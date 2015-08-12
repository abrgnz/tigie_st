json.array!(@sub_chapters) do |sub_chapter|
  json.extract! sub_chapter, :id, :identifier, :content, :position, :parent
  json.url sub_chapter_url(sub_chapter, format: :json)
end

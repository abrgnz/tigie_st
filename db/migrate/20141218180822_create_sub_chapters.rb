class CreateSubChapters < ActiveRecord::Migration
  def change
    create_table :sub_chapters do |t|
      t.string :identifier
      t.text :content
      t.integer :position
      t.integer :chapter_id

      t.timestamps
    end
  end
end

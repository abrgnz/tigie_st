class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :identifier
      t.text :content
      t.integer :position
      t.integer :sub_chapter_id

      t.timestamps
    end
  end
end

class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :identifier
      t.text :content

      t.timestamps
    end
  end
end

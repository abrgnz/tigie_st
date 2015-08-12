class CreateExpandeds < ActiveRecord::Migration
  def change
    create_table :expandeds do |t|
      t.string :identifier
      t.text :content
      t.integer :position
      t.integer :sub_content_id

      t.timestamps
    end
  end
end

class CreateSubContents < ActiveRecord::Migration
  def change
    create_table :sub_contents do |t|
      t.string :identifier
      t.text :contenty
      t.integer :position
      t.integer :content_id

      t.timestamps
    end
  end
end

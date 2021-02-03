class CreateTagposts < ActiveRecord::Migration[6.0]
  def change
    create_table :tagposts do |t|
      t.integer :tag_id
      t.integer :post_id

      t.timestamps
    end
  end
end

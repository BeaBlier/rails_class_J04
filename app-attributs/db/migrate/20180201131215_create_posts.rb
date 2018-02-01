class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :author_id
      t.belongs_to :author, index: true
      t.timestamps
    end
  end
end

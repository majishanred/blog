class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :text
      t.integer :likes_count, default: 0
      t.string :tags
      
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end

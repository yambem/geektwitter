class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :image
      t.integer :price
      t.string :url
      t.integer :product_id
      t.integer :user_id

      t.timestamps
    end
  end
end

class CreateAds < ActiveRecord::Migration[5.0]
  def change
    create_table :ads do |t|
      t.string :title
      t.text :description

      t.string :image_url
      t.decimal :price, precision: 8, scale: 2

      t.integer :user_id
      t.index :user_id

      t.integer :topic_id
      t.index :topic_id

      t.timestamps
    end
  end
end

class CreateAds < ActiveRecord::Migration[5.0]
  def change
    create_table :ads do |t|
      t.belongs_to :user, index: true
      t.belongs_to :topic, index: true
      t.string :title
      t.text :description

      t.string :image_url
      t.decimal :price, precision: 8, scale: 2


      t.timestamps
    end
  end
end

class CreateTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
        t.belongs_to :admin_user, index: true
        t.string :name
        t.string :description

        t.timestamps
    end
  end
end

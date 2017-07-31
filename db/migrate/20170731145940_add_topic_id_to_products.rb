class AddTopicIdToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :topic_id, :integer
    add_index  :products, :topic_id, unique: true
  end
end

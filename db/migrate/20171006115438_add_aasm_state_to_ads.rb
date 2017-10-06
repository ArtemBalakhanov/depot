class AddAasmStateToAds < ActiveRecord::Migration[5.0]
  def change
    add_column :ads, :aasm_state, :string
  end
end

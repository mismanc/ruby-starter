class AddOptionIdToResponse < ActiveRecord::Migration[6.1]
  def change
    add_column :responses, :option_id, :string, null: true
    add_index :responses, :option_id
  end
end

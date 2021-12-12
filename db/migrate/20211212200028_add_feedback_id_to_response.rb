class AddFeedbackIdToResponse < ActiveRecord::Migration[6.1]
  def change
    add_column :responses, :feedback_id, :string
    add_index :responses, :feedback_id
  end
end

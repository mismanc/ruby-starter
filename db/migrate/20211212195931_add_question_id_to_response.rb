class AddQuestionIdToResponse < ActiveRecord::Migration[6.1]
  def change
    add_column :responses, :question_id, :string
    add_index :responses, :question_id
  end
end

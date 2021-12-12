class AddQuestionIdToOption < ActiveRecord::Migration[6.1]
  def change
    add_column :options, :question_id, :string
    add_index :options, :question_id
  end
end

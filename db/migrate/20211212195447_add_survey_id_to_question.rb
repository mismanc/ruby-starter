class AddSurveyIdToQuestion < ActiveRecord::Migration[6.1]
  def change
    add_column :questions, :survey_id, :string
    add_index :questions, :survey_id
  end
end

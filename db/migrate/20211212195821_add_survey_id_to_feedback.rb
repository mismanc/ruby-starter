class AddSurveyIdToFeedback < ActiveRecord::Migration[6.1]
  def change
    add_column :feedbacks, :survey_id, :string
    add_index :feedbacks, :survey_id
  end
end

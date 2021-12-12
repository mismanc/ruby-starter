# == Schema Information
#
# Table name: questions
#
#  id         :string           not null, primary key
#  title      :string
#  type       :integer          default("text")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  survey_id  :string
#
# Indexes
#
#  index_questions_on_survey_id  (survey_id)
#
class Question < GeneralModel
  enum type: {text:0, choice:1}
  belongs_to :survey
  has_many :options
end

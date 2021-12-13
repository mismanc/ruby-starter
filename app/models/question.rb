# == Schema Information
#
# Table name: questions
#
#  id         :string           not null, primary key
#  title      :string
#  type       :string           default("text")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  survey_id  :string
#
# Indexes
#
#  index_questions_on_survey_id  (survey_id)
#
class Question < GeneralModel
  self.inheritance_column = :_sti_disabled
  enum type: {text:'text', choice:'choice'}
  belongs_to :survey
  has_many :options
end

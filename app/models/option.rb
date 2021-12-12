# == Schema Information
#
# Table name: options
#
#  id          :string           not null, primary key
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :string
#
# Indexes
#
#  index_options_on_question_id  (question_id)
#
class Option < GeneralModel
  belongs_to :question
end

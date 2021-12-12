# == Schema Information
#
# Table name: responses
#
#  id          :string           not null, primary key
#  body        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  feedback_id :string
#  option_id   :string
#  question_id :string
#
# Indexes
#
#  index_responses_on_feedback_id  (feedback_id)
#  index_responses_on_option_id    (option_id)
#  index_responses_on_question_id  (question_id)
#
class Response < GeneralModel
  belongs_to :question
  belongs_to :option
  belongs_to :feedback
end

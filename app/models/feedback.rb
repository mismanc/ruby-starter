# == Schema Information
#
# Table name: feedbacks
#
#  id         :string           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  survey_id  :string
#
# Indexes
#
#  index_feedbacks_on_survey_id  (survey_id)
#
class Feedback < GeneralModel
  belongs_to :survey
  has_one :response
end

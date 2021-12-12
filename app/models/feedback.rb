# == Schema Information
#
# Table name: feedbacks
#
#  id         :string           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Feedback < GeneralModel
  belongs_to :survey
  has_one :response
end

# == Schema Information
#
# Table name: responses
#
#  id         :string           not null, primary key
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Response < GeneralModel
  belongs_to :question
  belongs_to :option
  belongs_to :feedback
end

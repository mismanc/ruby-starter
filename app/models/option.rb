# == Schema Information
#
# Table name: options
#
#  id         :string           not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Option < GeneralModel
  belongs_to :question
end

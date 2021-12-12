# == Schema Information
#
# Table name: surveys
#
#  id         :string           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Survey < GeneralModel
  has_many :questions

end

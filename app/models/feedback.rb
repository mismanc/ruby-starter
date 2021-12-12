class Feedback < GeneralModel
  belongs_to :survey
  has_one :response
end

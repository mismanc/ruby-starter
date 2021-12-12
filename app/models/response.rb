class Response < GeneralModel
  belongs_to :question
  belongs_to :option
  belongs_to :feedback
end

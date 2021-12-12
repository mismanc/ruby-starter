class Question < GeneralModel
  enum type: {text:0, choice:1}
  belongs_to :survey
end

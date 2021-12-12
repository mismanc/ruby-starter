class GeneralModel < ApplicationRecord
  self.abstract_class = true
  before_create do
    self.id = SecureRandom.uuid unless self.id
  end
end

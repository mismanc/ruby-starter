# == Schema Information
#
# Table name: questions
#
#  id         :string           not null, primary key
#  title      :string
#  type       :string           default("text")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  survey_id  :string
#
# Indexes
#
#  index_questions_on_survey_id  (survey_id)
#
require "test_helper"

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

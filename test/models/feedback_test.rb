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
require "test_helper"

class FeedbackTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

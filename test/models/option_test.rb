# == Schema Information
#
# Table name: options
#
#  id          :string           not null, primary key
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :string
#
# Indexes
#
#  index_options_on_question_id  (question_id)
#
require "test_helper"

class OptionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: operation_hours
#
#  id           :integer          not null, primary key
#  store_id     :integer
#  day          :integer          default("sunday")
#  open_time    :time
#  closing_time :time
#  closed       :boolean          default(FALSE)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class OperationHourTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

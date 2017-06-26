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

class OperationHour < ApplicationRecord
  enum day: { sunday: 0, monday: 1, tuesday: 2, wednesday: 3, thursday: 4, friday: 5, saturday: 6 }

  belongs_to :store

  validates :store, uniqueness: { scope: :day }

  def hours
    closed ? 'Closed' : "#{open_time.strftime('%-H:%M')} - #{closing_time.strftime('%-H:%M')}"
  end
end

# == Schema Information
#
# Table name: stores
#
#  id         :integer          not null, primary key
#  name       :string
#  latitude   :string
#  longitude  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Store < ApplicationRecord
  has_many :operation_hours, dependent: :destroy
end

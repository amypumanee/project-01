# == Schema Information
#
# Table name: locations
#
#  id         :bigint           not null, primary key
#  name       :text
#  image      :text
#  event_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Location < ApplicationRecord
  has_many :events
end

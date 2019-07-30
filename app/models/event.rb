# == Schema Information
#
# Table name: events
#
#  id          :bigint           not null, primary key
#  title       :text
#  start_date  :datetime
#  image       :text
#  address     :text
#  info        :text
#  location_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  end_date    :datetime
#

class Event < ApplicationRecord
  belongs_to :location, :optional => true
  has_many :attends
end

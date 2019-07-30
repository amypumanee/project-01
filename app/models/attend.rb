# == Schema Information
#
# Table name: attends
#
#  id             :bigint           not null, primary key
#  user_id        :integer
#  event_id       :integer
#  otp_secret_key :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Attend < ApplicationRecord
  has_one_time_password

  belongs_to :user
  belongs_to :event
end

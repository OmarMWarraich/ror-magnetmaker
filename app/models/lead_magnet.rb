# == Schema Information
#
# Table name: lead_magnets
#
#  id          :integer          not null, primary key
#  ai_template :string
#  name        :string
#  prompt      :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer          not null
#
# Indexes
#
#  index_lead_magnets_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
class LeadMagnet < ApplicationRecord
  belongs_to :user
  has_one :content, dependent: :destroy
  has_one :signupform, dependent: :destroy
  accepts_nested_attributes_for :content, :signupform
end

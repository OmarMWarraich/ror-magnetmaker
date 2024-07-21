# == Schema Information
#
# Table name: contents
#
#  id             :integer          not null, primary key
#  content        :json
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  lead_magnet_id :integer          not null
#
# Indexes
#
#  index_contents_on_lead_magnet_id  (lead_magnet_id)
#
# Foreign Keys
#
#  lead_magnet_id  (lead_magnet_id => lead_magnets.id)
#
class Content < ApplicationRecord
  belongs_to :lead_magnet
end

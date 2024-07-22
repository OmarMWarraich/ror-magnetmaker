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

  before_save :parse_content_json

  def parse_content_json
    self.content = JSON.parse(self.content) if content.is_a?(String)
  rescue JSON::ParserError
    errors.add(:content, 'is not a valid JSON')
    throw(:abort)
  end
end

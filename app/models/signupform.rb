# == Schema Information
#
# Table name: signupforms
#
#  id                 :integer          not null, primary key
#  headline           :string
#  submit_button_text :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  lead_magnet_id     :integer          not null
#
# Indexes
#
#  index_signupforms_on_lead_magnet_id  (lead_magnet_id)
#
# Foreign Keys
#
#  lead_magnet_id  (lead_magnet_id => lead_magnets.id)
#
class Signupform < ApplicationRecord
  belongs_to :lead_magnet
end

json.extract! signupform, :id, :lead_magnet_id, :headline, :submit_button_text, :created_at, :updated_at
json.url signupform_url(signupform, format: :json)

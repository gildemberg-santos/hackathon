json.extract! lead, :id, :name, :phone, :email, :created_at, :updated_at
json.url lead_url(lead, format: :json)

json.extract! company, :id, :name, :email, :phone, :created_at, :updated_at
json.url company_url(company, format: :json)

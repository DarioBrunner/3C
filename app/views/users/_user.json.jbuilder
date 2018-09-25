json.extract! user, :id, :company_id, :name, :email, :password, :status, :created_at, :updated_at
json.url user_url(user, format: :json)

json.extract! company, :id, :companyname, :address, :password, :created_at, :updated_at
json.url company_url(company, format: :json)

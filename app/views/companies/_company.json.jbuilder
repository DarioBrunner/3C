json.extract! company, :id, :companyname, :adress, :passwort, :created_at, :updated_at
json.url company_url(company, format: :json)

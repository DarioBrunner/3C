json.extract! buser, :id, :firstname, :lastname, :passwort, :status, :created_at, :updated_at
json.url buser_url(buser, format: :json)

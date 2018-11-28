json.extract! channel, :id, :usage, :url, :title, :login, :created_at, :updated_at
json.url channel_url(channel, format: :json)

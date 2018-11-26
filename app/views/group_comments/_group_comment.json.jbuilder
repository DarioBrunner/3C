json.extract! group_comment, :id, :group_message_id, :user_id, :comment, :created_at, :updated_at
json.url group_comment_url(group_comment, format: :json)

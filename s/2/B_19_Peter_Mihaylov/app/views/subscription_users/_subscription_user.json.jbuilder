json.extract! subscription_user, :id, :subscription_id, :user_id, :user_role, :created_at, :updated_at
json.url subscription_user_url(subscription_user, format: :json)

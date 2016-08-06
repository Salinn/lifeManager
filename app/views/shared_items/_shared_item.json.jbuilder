json.extract! shared_item, :id, :name, :photo, :user_id, :created_at, :updated_at
json.url shared_item_url(shared_item, format: :json)
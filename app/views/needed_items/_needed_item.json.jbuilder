json.extract! needed_item, :id, :name, :price, :user_id, :apartment_id, :created_at, :updated_at
json.url needed_item_url(needed_item, format: :json)
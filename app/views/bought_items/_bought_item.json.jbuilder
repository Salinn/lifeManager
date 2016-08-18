json.extract! bought_item, :id, :name, :price, :apartment_id, :user_id, :created_at, :updated_at
json.url bought_item_url(bought_item, format: :json)
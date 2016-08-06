json.extract! bill, :id, :name, :price, :created_at, :updated_at
json.url bill_url(bill, format: :json)
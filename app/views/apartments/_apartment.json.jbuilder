json.extract! apartment, :id, :name, :landlord_id, :street_address, :city, :state, :start_date, :end_date, :rent_price, :created_at, :updated_at
json.url apartment_url(apartment, format: :json)
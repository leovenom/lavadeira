json.extract! client, :id, :name, :phone_number, :address, :created_at, :updated_at
json.url client_url(client, format: :json)

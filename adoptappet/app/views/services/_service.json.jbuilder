json.extract! service, :id, :name, :address, :phone, :email, :type, :created_at, :updated_at
json.url service_url(service, format: :json)
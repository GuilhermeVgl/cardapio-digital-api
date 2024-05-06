json.extract! produto, :id, :name, :description, :price, :amountPeople, :images, :created_at, :updated_at
json.url produto_url(produto, format: :json)

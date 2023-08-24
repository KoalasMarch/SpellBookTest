json.extract! product, :id, :name, :description, :price_subunit, :price_currency, :created_at, :updated_at
json.url product_url(product, format: :json)

json.extract! barcode, :id, :code, :name, :been_set, :created_at, :updated_at
json.url barcode_url(barcode, format: :json)

json.extract! superhero, :id, :name, :power, :prefix, :suffix, :descriptor, :created_at, :updated_at
json.url superhero_url(superhero, format: :json)

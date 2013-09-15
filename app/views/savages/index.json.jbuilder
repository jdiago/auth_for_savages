json.array!(@savages) do |savage|
  json.extract! savage, :name
  json.url savage_url(savage, format: :json)
end

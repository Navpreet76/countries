json.array!(@countries) do |country|
  json.extract! country, :id, :name, :total_strength, :aircraft, :armored_vehicles
  json.url country_url(country, format: :json)
end

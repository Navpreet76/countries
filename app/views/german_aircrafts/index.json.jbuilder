json.array!(@german_aircrafts) do |german_aircraft|
  json.extract! german_aircraft, :id, :name, :designation, :description, :content
  json.url german_aircraft_url(german_aircraft, format: :json)
end

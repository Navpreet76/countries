json.array!(@american_aircrafts) do |american_aircraft|
  json.extract! american_aircraft, :id, :name, :designation, :description, :content
  json.url american_aircraft_url(american_aircraft, format: :json)
end

json.array!(@aircrafts) do |aircraft|
  json.extract! aircraft, :id, :name, :designation, :numbers_built
  json.url aircraft_url(aircraft, format: :json)
end

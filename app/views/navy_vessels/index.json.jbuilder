json.array!(@navy_vessels) do |navy_vessel|
  json.extract! navy_vessel, :id, :name, :designation, :strength
  json.url navy_vessel_url(navy_vessel, format: :json)
end

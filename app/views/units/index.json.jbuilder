json.array!(@units) do |unit|
  json.extract! unit, :id, :name, :designation, :weapons_used, :strength
  json.url unit_url(unit, format: :json)
end

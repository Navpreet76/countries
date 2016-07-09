json.array!(@tanks) do |tank|
  json.extract! tank, :id, :name, :description, :designation, :numbers_built
  json.url tank_url(tank, format: :json)
end

json.array!(@german_navy_vessels) do |german_navy_vessel|
  json.extract! german_navy_vessel, :id, :name, :designation, :description, :content
  json.url german_navy_vessel_url(german_navy_vessel, format: :json)
end

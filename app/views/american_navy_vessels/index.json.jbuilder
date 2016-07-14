json.array!(@american_navy_vessels) do |american_navy_vessel|
  json.extract! american_navy_vessel, :id, :name, :designation, :description, :content
  json.url american_navy_vessel_url(american_navy_vessel, format: :json)
end

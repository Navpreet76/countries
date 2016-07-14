json.array!(@american_units) do |american_unit|
  json.extract! american_unit, :id, :name, :designation, :description, :content
  json.url american_unit_url(american_unit, format: :json)
end

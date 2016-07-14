json.array!(@german_units) do |german_unit|
  json.extract! german_unit, :id, :name, :designation, :description, :content
  json.url german_unit_url(german_unit, format: :json)
end

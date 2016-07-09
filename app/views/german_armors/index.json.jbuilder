json.array!(@german_armors) do |german_armor|
  json.extract! german_armor, :id, :name, :designation, :numbers_built, :description
  json.url german_armor_url(german_armor, format: :json)
end

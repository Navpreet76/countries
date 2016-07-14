json.array!(@american_armors) do |american_armor|
  json.extract! american_armor, :id, :name, :designation, :numbers_built, :description, :content
  json.url american_armor_url(american_armor, format: :json)
end

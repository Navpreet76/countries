json.array!(@united_states) do |united_state|
  json.extract! united_state, :id, :name, :description
  json.url united_state_url(united_state, format: :json)
end

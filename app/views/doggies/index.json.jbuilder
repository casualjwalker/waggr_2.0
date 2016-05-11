json.array!(@doggies) do |doggy|
  json.extract! doggy, :id, :name, :breed, :age, :temperment, :FunFact
  json.url doggy_url(doggy, format: :json)
end

json.array!(@parents) do |parent|
  json.extract! parent, :id, :name
  json.url parent_url(parent, format: :json)
end

json.array!(@estatuses) do |estatus|
  json.extract! estatus, :id, :titulo
  json.url estatus_url(estatus, format: :json)
end

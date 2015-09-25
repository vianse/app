json.array!(@agrupadores) do |agrupadore|
  json.extract! agrupadore, :id, :titulo
  json.url agrupadore_url(agrupadore, format: :json)
end

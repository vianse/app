json.array!(@idiomas) do |idioma|
  json.extract! idioma, :id, :titulo
  json.url idioma_url(idioma, format: :json)
end

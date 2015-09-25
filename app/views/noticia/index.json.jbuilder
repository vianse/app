json.array!(@noticia) do |noticium|
  json.extract! noticium, :id, :titulo, :descripcion, :estatus_id, :fecha, :categoria_id, :relevancia, :link, :agrupador_id
  json.url noticium_url(noticium, format: :json)
end

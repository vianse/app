json.array!(@categoria) do |categorium|
  json.extract! categorium, :id, :titulo
  json.url categorium_url(categorium, format: :json)
end

json.array!(@likes) do |like|
  json.extract! like, :id, :like, :dislike, :noticium_id, :user_id
  json.url like_url(like, format: :json)
end

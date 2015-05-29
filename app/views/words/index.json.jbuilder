json.array!(@words) do |word|
  json.extract! word, :id, :title, :description, :user_id
  json.url word_url(word, format: :json)
end

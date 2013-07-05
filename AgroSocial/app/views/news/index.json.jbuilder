json.array!(@news) do |news|
  json.extract! news, :title, :date_time, :content, :author
  json.url news_url(news, format: :json)
end

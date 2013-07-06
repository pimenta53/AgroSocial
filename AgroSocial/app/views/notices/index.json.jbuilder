json.array!(@notices) do |notice|
  json.extract! notice, :title, :date_time, :content, :author
  json.url notice_url(notice, format: :json)
end

json.array!(@events) do |event|
  json.extract! event, :name, :start_date, :end_date, :description, :local, :image
  json.url event_url(event, format: :json)
end

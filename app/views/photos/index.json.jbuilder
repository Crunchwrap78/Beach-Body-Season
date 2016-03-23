json.array!(@photos) do |photo|
  json.extract! photo, :id, :title, :photo_url, :description
  json.url photo_url(photo, format: :json)
end

json.array!(@landmarks) do |landmark|
  json.extract! landmark, :lng, :lat, :name, :info
  json.url landmark_url(landmark, format: :json)
end

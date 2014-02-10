json.array!(@restrooms) do |restroom|
  json.extract! restroom, :id, :numbered, :typ, :building_id
  json.url restroom_url(restroom, format: :json)
end

json.array!(@beacons) do |beacon|
  json.extract! beacon, :id, :identifier, :prox_min, :prox_max, :prox_med, :building_id
  json.url beacon_url(beacon, format: :json)
end

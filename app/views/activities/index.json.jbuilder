json.array!(@activities) do |activity|
  json.extract! activity, :id, :address_start, :address_end, :latitude, :longitude, :lat_end, :long_end, :distance, :date
  json.url activity_url(activity, format: :json)
end

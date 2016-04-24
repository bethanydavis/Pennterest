json.array!(@pins) do |pin|
  json.extract! pin, :id, :caption, :category, :source
  json.url pin_url(pin, format: :json)
end

json.array!(@regalos) do |regalo|
  json.extract! regalo, :id, :name, :description, :price_min, :price_max, :link, :img_product, :state
  json.url regalo_url(regalo, format: :json)
end

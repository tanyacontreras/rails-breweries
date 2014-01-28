json.array!(@cervezas) do |cerveza|
  json.extract! cerveza, :id, :name, :brewer, :type, :price, :brewery, :ABV
  json.url cerveza_url(cerveza, format: :json)
end

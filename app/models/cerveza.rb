class Cerveza
  include Mongoid::Document
  field :name, type: String
  field :brewer, type: String
  field :type, type: String
  field :price, type: Float
  field :brewery, type: String
  field :ABV, type: Float
end

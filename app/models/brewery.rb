class Brewery
  include Mongoid::Document
  field :name, type: String
  field :city, type: String
  field :founded, type: Integer
end

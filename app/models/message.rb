class Message
  include Mongoid::Document
  field :post, type: String
  field :flaguser, type: String
end

class Message
  include Mongoid::Document
  field :content, type: String
  # field :flaguser, type: String
  belongs_to :user
end

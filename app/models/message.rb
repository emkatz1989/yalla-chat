class Message
  include Mongoid::Document
  include Mongoid::Timestamps
  field :content, type: String
  # field :flaguser, type: String
  belongs_to :user
end

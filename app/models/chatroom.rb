class Chatroom
  include Mongoid::Document
  field :onlineusers, type: String
end

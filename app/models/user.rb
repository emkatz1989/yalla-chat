class User
  include Mongoid::Document
  field :fullname, type: String
  field :age, type: Integer
  field :birthday, type: Date
  field :nationality, type: String
  field :city, type: String
  field :username, type: String
  field :password_digest, type: String
  field :is_verified, type: Mongoid::Boolean, default: false
  field :is_admin, type: Mongoid::Boolean, default: false
end


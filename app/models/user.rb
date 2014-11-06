class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  has_secure_password
  validates_uniqueness_of :username
  has_many :messages
  field :fullname, type: String
  field :age, type: Integer
  field :birthday, type: Date
  field :nationality, type: String
  field :city, type: String
  field :username, type: String
  field :password_digest, type: String
  # field :is_verified, type: Mongoid::Boolean, default: false
  # field :is_admin, type: Mongoid::Boolean, default: false

end


class User < ActiveRecord::Base
  has_secure_password
  has_many :items
  has_many :orders
end

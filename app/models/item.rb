class Item < ActiveRecord::Base
  belongs_to :user
  has_many :orderlines, through: :orderlines
end

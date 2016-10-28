class Category < ActiveRecord::Base
  belongs_to :loginuser
  has_many :price
end

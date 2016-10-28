class Category < ActiveRecord::Base
  belongs_to :loginuser
  has_many :prices
end

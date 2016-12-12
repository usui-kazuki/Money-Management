class Familyuser < ActiveRecord::Base
	belongs_to :loginuser
	has_many :prices

	validates :name, presence: true
end

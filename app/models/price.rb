class Price < ActiveRecord::Base
	belongs_to :loginuser
	belongs_to :familyuser
        belongs_to :category
end

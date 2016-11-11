class Goal < ActiveRecord::Base
	belongs_to :loginuser

    validates_uniqueness_of :date, :message => "は既に登録されています"
end

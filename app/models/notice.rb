class Notice < ActiveRecord::Base
	belongs_to :loginuser
    default_scope -> { order(date: :asc) }

end

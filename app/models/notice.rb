class Notice < ActiveRecord::Base
	belongs_to :loginuser
    default_scope -> { order(date: :asc) }

    validates :date, presence: true
    validates :title, presence: true
end

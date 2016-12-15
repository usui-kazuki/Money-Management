class Price < ActiveRecord::Base
	belongs_to :loginuser
	belongs_to :familyuser
	belongs_to :category

	validates_length_of :memo, :maximum => 50
    validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validates :familyuser_id, presence: true
    validates :date, presence: true

    default_scope -> { order(date: :asc) }

end

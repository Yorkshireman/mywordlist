class Quote < ActiveRecord::Base
	validates :content, presence: true
	validates :author, presence: true

	scope :order_by_creation_date, -> { order("created_at DESC") }

end

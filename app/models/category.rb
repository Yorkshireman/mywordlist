class Category < ActiveRecord::Base

	has_and_belongs_to_many :words

	belongs_to :word_list

	validates :title, presence: true

	scope :alphabetical_order_asc, -> { order("title ASC") }
	
end

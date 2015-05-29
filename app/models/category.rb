class Category < ActiveRecord::Base
	has_and_belongs_to_many :words

	validates :title, presence: true
end

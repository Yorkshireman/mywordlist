class Word < ActiveRecord::Base

  belongs_to :word_list

  has_and_belongs_to_many :categories

  validates :title, presence: true

  scope :alphabetical_order_asc, -> { order("title ASC") }
  
end

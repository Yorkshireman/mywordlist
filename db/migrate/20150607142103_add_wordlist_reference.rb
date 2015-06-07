class AddWordlistReference < ActiveRecord::Migration
  def change
  	add_belongs_to(:words, :word_list, index: true)
  end
end

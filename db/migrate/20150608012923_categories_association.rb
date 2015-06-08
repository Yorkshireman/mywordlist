class CategoriesAssociation < ActiveRecord::Migration
  def change
  	add_belongs_to(:categories, :word_list, index: true)
  end
end

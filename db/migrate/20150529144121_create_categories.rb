class CreateCategories < ActiveRecord::Migration
  def change
    
    create_table :categories do |t|
      t.string :title

      t.timestamps null: false
    end

    create_table :categories_words, id: false do |t|
    	t.belongs_to :category, index: true
    	t.belongs_to :word, index: true
    end

  end
end

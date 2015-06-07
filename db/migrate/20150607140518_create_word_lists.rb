class CreateWordLists < ActiveRecord::Migration
  def change
    create_table :word_lists do |t|

      t.timestamps null: false
    end

    add_belongs_to(:word_lists, :user)
    
  end
end

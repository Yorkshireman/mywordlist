class AddWordsReference < ActiveRecord::Migration
  def change
  	references :user, index: true, foreign_key: true
  end
end

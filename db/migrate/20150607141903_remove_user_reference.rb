class RemoveUserReference < ActiveRecord::Migration
  def change
  	remove_reference(:words, :user, index: true, foreign_key: true)
  end
end

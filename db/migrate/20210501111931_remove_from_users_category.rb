class RemoveFromUsersCategory < ActiveRecord::Migration[6.1]
  def change
  	remove_column :users, :category
  end
end

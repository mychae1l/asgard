class AddFirsnameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :firsname, :string
  end
end

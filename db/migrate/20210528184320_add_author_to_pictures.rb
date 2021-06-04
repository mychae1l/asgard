class AddAuthorToPictures < ActiveRecord::Migration[6.1]
  def change
    add_column :pictures, :author, :string
    drop_table :pictures
  end
end

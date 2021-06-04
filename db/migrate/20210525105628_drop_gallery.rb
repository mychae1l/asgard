class DropGallery < ActiveRecord::Migration[6.1]
  def change
  	drop_table :galleries
  end
end

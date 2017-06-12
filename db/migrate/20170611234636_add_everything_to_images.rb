class AddEverythingToImages < ActiveRecord::Migration[5.1]
  def change
  	add_column :images, :image, :text
  	add_column :images, :uploaded_by, :text
  end
end

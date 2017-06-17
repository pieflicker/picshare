class AddUploaderNameToImages < ActiveRecord::Migration[5.1]
  def change
  	add_column :images, :uploader_name, :string
  end
end

class FixingColumns < ActiveRecord::Migration[5.1]
  def change
  	remove_column :images, :uploaded_by, :text
  	add_column :images, :uploaded_by, :string

  end
end

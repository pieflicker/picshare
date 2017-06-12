class AddImagesToImages < ActiveRecord::Migration[5.1]
  def change
  	create_table :images do |t|
  		t.timestamps
  	end
  end
end

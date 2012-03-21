class AddCoverImageNameToProducts < ActiveRecord::Migration
  def change
    add_column :products, :cover_image_name, :string

  end
end

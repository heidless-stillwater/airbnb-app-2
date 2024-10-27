class AddDefaultImageToProperties < ActiveRecord::Migration[7.2]
  def change
    add_column :properties, :defaultImage, :string
  end
end

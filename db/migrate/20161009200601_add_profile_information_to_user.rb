class AddProfileInformationToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :background_image, :string
    add_column :users, :accent_color, :string
    add_column :users, :location, :string
  end
end

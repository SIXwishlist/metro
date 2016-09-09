class AddBasicUserInfoToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :image, :string
    add_column :users, :birthday, :string
    add_column :users, :about, :string
  end
end

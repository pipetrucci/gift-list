class AddImageToUser < ActiveRecord::Migration
  def change
    add_column :users, :img_contact, :string
  end
end

class CreateRegalos < ActiveRecord::Migration
  def change
    create_table :regalos do |t|
      t.string :name
      t.text :description
      t.integer :price_min
      t.integer :price_max
      t.string :link
      t.string :img_product
      t.integer :state

      t.timestamps null: false
    end
  end
end

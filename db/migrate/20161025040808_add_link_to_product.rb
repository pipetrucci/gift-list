class AddLinkToProduct < ActiveRecord::Migration
  def change
    add_column :regalos, :link2, :text
  end
end

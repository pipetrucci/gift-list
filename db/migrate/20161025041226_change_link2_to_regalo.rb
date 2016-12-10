class ChangeLink2ToRegalo < ActiveRecord::Migration
  def change
    change_column(:regalos, :link2, :string)
  end
end

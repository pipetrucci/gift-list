class AddUserIdToRegalo < ActiveRecord::Migration
  def change
    add_reference :regalos, :user, index: true, foreign_key: true
  end
end

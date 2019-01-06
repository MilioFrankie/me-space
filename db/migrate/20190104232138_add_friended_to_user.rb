class AddFriendedToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :friended, :text
  end
end

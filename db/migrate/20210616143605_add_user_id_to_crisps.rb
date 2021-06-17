class AddUserIdToCrisps < ActiveRecord::Migration[6.1]
  def change
    add_column :crisps, :user_id, :integer
  end
end

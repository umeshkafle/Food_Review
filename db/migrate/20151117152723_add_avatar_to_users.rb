class AddAvatarToUsers < ActiveRecord::Migration
  def change
    add_column :users, :avatat, :string
  end
end

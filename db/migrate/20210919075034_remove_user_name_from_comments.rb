class RemoveUserNameFromComments < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :user_name, :string
  end
end

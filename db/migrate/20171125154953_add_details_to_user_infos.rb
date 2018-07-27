class AddDetailsToUserInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :user_infos, :first_name, :string
    add_column :user_infos, :last_name, :string
    add_column :user_infos, :email, :string
    add_column :user_infos, :contact_number, :string
    add_column :user_infos, :links, :string
  end
end

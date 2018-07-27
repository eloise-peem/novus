class AddUserToUserInfos < ActiveRecord::Migration[5.1]
  def change
    add_reference :user_infos, :user, foreign_key: true
  end
end

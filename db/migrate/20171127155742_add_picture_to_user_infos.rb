class AddPictureToUserInfos < ActiveRecord::Migration[5.1]
  def change
    add_column :user_infos, :picture, :string
  end
end

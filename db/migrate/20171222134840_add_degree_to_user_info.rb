class AddDegreeToUserInfo < ActiveRecord::Migration[5.1]
  def change
    add_column :user_infos, :interest, :string
    add_column :user_infos, :degree, :string
    add_column :user_infos, :field, :string
  end
end

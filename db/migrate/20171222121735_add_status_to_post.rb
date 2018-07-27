class AddStatusToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :finished, :boolean
  end
end

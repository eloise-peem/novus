class RemoveTypeFromPost < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :type, :integer
  end
end

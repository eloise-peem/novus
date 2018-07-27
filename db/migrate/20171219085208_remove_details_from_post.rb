class RemoveDetailsFromPost < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :producer, :string
    remove_column :posts, :director, :string
    remove_column :posts, :version_number, :string
  end
end
